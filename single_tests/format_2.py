{
    'omp': {
        'stderr': r'''
\[.*?\] \[Error\] `format` failed - not enough arguments given
\[.*?\] \[Error\] Native function failed
        ''',
        'stdout': r'''
\[.*?\] \[Info\] \*\*\* Test format_failure start
        ''',
    },
    'pawncc': {
        'stderr': '',
        'stdout': r'''
Pawn compiler 3\.10\.10	 	 	Copyright \(c\) 1997-2006, ITB CompuPhase
        ''',
    }
}
