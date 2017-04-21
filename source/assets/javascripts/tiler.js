(function() {
  "use strict";

  var Tiler = function(container) {
    // fail early without doing anything if the container is missing...
    if (container === null) { return; }
    this.container = container;
    this.tiles = container.querySelectorAll('[data-tile]');
    // ... of if it has no tiles in it
    if (this.tiles.length === 0) { return; }
    this.layoutTiles();
  };

  Tiler.prototype.layoutTiles = function() {
    var cellDimensions = this.cellDimensions(),
      topLeftPosition = this.topLeftPosition(),
      tileGap = this.tileGap(),
      containerHeight = 0,
      containerWidth = 0;
    for (var i = 0; i < this.tiles.length; i++) {
      var tile = this.tiles[i];
      this.layTile(tile, topLeftPosition, cellDimensions, tileGap);
      var tileBottom = (tile.offsetTop + tile.offsetHeight),
        tileRight = (tile.offsetLeft + tile.offsetWidth);

      if (tileBottom > containerHeight) { containerHeight = tileBottom; }
      if (tileRight > containerWidth) { containerWidth = tileRight; }
    }
    this.container.style.width = containerWidth + 'px';
    this.container.style.height = containerHeight + 'px';
  };

  Tiler.prototype.layTile = function(tile, topLeft, dimensions, tileGap) {
    var row = this.getNumberFromData(tile, 'tileRow'),
      column = this.getNumberFromData(tile, 'tileColumn'),
      width = this.getNumberFromData(tile, 'tileWidth', 1),
      height = this.getNumberFromData(tile, 'tileHeight', 1);

    if ((row === undefined) || (column === undefined)) {
      // don't try to lay the tile if we don't know where it goes
      return;
    }

    tile.style.position = 'absolute';
    tile.style.top = (topLeft.top + ((dimensions.height + tileGap) * row)) + 'px';
    tile.style.left = (topLeft.left + ((dimensions.width + tileGap) * column)) + 'px';
    tile.style.width = ((dimensions.width * width) + (tileGap * Math.max(width - 1, 0))) + 'px';
    tile.style.height = ((dimensions.width * width) + (tileGap * Math.max(width - 1, 0))) + 'px';
  };

  Tiler.prototype.topLeftPosition = function() {
    if (this._topLeftPosition === undefined) {
      for (var i = 0; i < this.tiles.length; i++) {
        var tile = this.tiles[i];
        if ((tile.dataset.tileRow === "0") && (tile.dataset.tileColumn === "0")) {
          this._topLeftPosition = { top: tile.offsetTop, left: tile.offsetLeft };
          return this._topLeftPosition;
        }
      }
    }
    return this._topLeftPosition;
  };

  Tiler.prototype.cellDimensions = function() {
    if (this._cellDimensions === undefined) {
      var aTile = this.container.querySelector('[data-tile]');
      if (aTile === null) {
        // if there are no tiles in the container, fail fast
        return;
      }
      var cellWidth = Math.ceil(aTile.offsetWidth / this.getNumberFromData(aTile, 'tileWidth', 1)),
        cellHeight = Math.ceil(aTile.offsetHeight / this.getNumberFromData(aTile, 'tileHeight', 1));
      this._cellDimensions = { width: cellWidth, height: cellHeight };
    }
    return this._cellDimensions;
  };

  Tiler.prototype.tileGap = function() {
    if (this._tileGap === undefined) {
      this._tileGap = this.getNumberFromData(this.container, 'tileGap', 6);
    }
    return this._tileGap;
  };

  Tiler.prototype.getNumberFromData = function(element, dataName, defaultValue) {
    var value = parseInt(element.dataset[dataName]);
    if (isNaN(value)) {
      return defaultValue;
    } else {
      return value;
    }
  }

  var readyFunc = function() {
    var mql = window.matchMedia("(min-width: 660px)");
    if (mql.matches) {
      new Tiler(document.querySelector('[data-tile-layout]'));
    }
  };

  if (document.readyState != 'loading') {
    readyFunc();
  } else {
    document.addEventListener("DOMContentLoaded", readyFunc);
  }
}());
