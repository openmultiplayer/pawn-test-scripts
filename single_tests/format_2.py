{
    'omp': {
        'stderr': r'''
\[\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z\] \[Error\] `format` failed - not enough arguments given
\[\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z\] \[Error\] Native function failed
        ''',
        'stdout': r'''
\[\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z\] \[Info\] \*\*\* Test format_failure start
        ''',
    },
    'pawncc': {
        'stderr': '',
        'stdout': r'''
Pawn compiler 3\.10\.10	 	 	Copyright \(c\) 1997-2006, ITB CompuPhase
        ''',
    }
}
