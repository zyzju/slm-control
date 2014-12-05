function ax

    global SLM ROI FIG AX MISC
    
    AX.image = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'position', [ MISC.padding ( 2* MISC.controls + 4 * MISC.padding ) SLM.width SLM.height ] ...
      , 'box', 'off' ...
      , 'xLimMode', 'manual' ...
      , 'xLim', [ 1 SLM.width ] ...
      , 'yLimMode', 'manual' ...
      , 'yLim', [ 1 SLM.height ] ...
      , 'tickdir', 'out' ...
    );
    imshow( zeros( SLM.size ), [] ...
      , 'border', 'tight' ...
      , 'parent', AX.image ...
    );

    AX.roi = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'color', 'none' ...
      , 'position', [ MISC.padding ( 2* MISC.controls + 4 * MISC.padding ) SLM.width SLM.height ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'xLimMode', 'manual' ...
      , 'xLim', [ 1 SLM.width ] ...
      , 'xLimMode', 'manual' ...
      , 'xTick', [] ...
      , 'yDir', 'reverse' ...
      , 'yLim', [ 1 SLM.height ] ...
      , 'yLimMode', 'manual' ...
      , 'yTick', [] ...
      , 'box', 'on' ...
      , 'tickdir', 'out' ...
    );
    ROI.display();


    AX.target = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'position', [ ( SLM.width + 2 * MISC.padding ) ( SLM.height + 2 * MISC.controls - ROI.height + 4 * MISC.padding ) ROI.width ROI.height ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'xLimMode', 'manual' ...
      , 'xLim', [ 1 ROI.width ] ...
      , 'yLimMode', 'manual' ...
      , 'yLim', [ 1 ROI.height ] ...
      , 'box', 'off' ...
      , 'tickdir', 'out' ...
    );
    imshow( zeros( ROI.size ), [] ...
      , 'border', 'tight' ...
      , 'parent', AX.target ...
    );


    AX.lineplot.x = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'color', 'none' ...
      , 'position', [ ( SLM.width + 2 * MISC.padding ) ( SLM.height + 2 * MISC.controls - ROI.height + 4 * MISC.padding ) ROI.width ROI.height ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'xLimMode', 'manual' ...
      , 'xLim', [ 1 ROI.width ] ...
      , 'xTick', [] ...
      , 'yTick', [] ...
      , 'box', 'on' ...
      , 'tickdir', 'out' ...
    );
    AX.lineplot.y = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'color', 'none' ...
      , 'position', [ ( SLM.width + 2 * MISC.padding ) ( SLM.height + 2 * MISC.controls - ROI.height + 4 * MISC.padding ) ROI.width ROI.height ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'xTick', [] ...
      , 'yDir', 'reverse' ...
      , 'yLimMode', 'manual' ...
      , 'yLim', [ 1 ROI.height ] ...
      , 'yTick', [] ...
      , 'box', 'on' ...
      , 'tickdir', 'out' ...
    );
    AX.lineplot.marker = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'color', 'none' ...
      , 'position', [ MISC.padding ( 2* MISC.controls + 4 * MISC.padding ) SLM.width SLM.height ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'xLimMode', 'manual' ...
      , 'xLim', [ 1 SLM.width ] ...
      , 'xLimMode', 'manual' ...
      , 'xTick', [] ...
      , 'yDir', 'reverse' ...
      , 'yLim', [ 1 SLM.height ] ...
      , 'yLimMode', 'manual' ...
      , 'yTick', [] ...
      , 'box', 'on' ...
      , 'tickdir', 'out' ...
    );


    previewSize = round( SLM.size * ROI.width / SLM.width );
    AX.preview = axes( ...
        'units', 'pixels' ...
      , 'parent', FIG.main ...
      , 'position', [ ( SLM.width + 2 * MISC.padding ) ( 2 * MISC.controls + 4 * MISC.padding ) previewSize( 2 ) previewSize( 1 ) ] ...
      , 'nextplot', 'replaceChildren' ...
      , 'box', 'off' ...
      , 'xLim', [ 1 SLM.width ] ...
      , 'yLimMode', 'manual' ...
      , 'yLim', [ 1 SLM.height ] ...
      , 'tickdir', 'out' ...
    );
    imshow( zeros( SLM.size ), [] ...
      , 'border', 'tight' ...
      , 'parent', AX.preview ...
    );

end