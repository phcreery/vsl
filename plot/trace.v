module plot

pub enum TraceType {
	scatter
	pie
	heatmap
	surface
	scatter3d
	bar
	histogram
}

type XType = []f64 | []string
type ZType = [][]f64 | []f64

[params]
pub struct Trace {
pub mut:
	trace_type    TraceType      [required]
	x             XType
	xbins         map[string]f32
	y             []f64
	z             ZType
	values        []f64
	labels        []string
	text          []string
	customdata    [][]string
	name          string
	mode          string
	marker        Marker
	line          Line
	pull          []f64
	hole          f64
	colorscale    string = 'Viridis'
	hovertemplate string
	textinfo      string
	fill          string
	fillcolor     string
}

pub struct Marker {
pub mut:
	size       []f64
	color      []string
	opacity    f64    = 0.8
	colorscale string = 'Viridis'
}

pub struct Line {
pub mut:
	color string
	width f64 = 2.0
	// check Plotly docs for more dash types
	dash string = 'solid'
}
