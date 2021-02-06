\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucd_document}[2021/01/07]

\LoadClass[a4paper,11pt]{exam}
\RequirePackage{ifthen,graphicx,color, amsmath,amssymb}
\linespread{1.25}

%increase the printed page area width
\extrawidth{0.5cm}

%increase header space on title page only
\extraheadheight[1.5cm]{0cm}

%setup page headers/footers for first and subsequent pages
\pagestyle{headandfoot}
\lhead[]{}
\chead[\bfseries \Large \themodulecode: \thecourse\\
\large Assignment \theassignmentnumber\\
\small \thestudentname \quad---\quad \thestudentnumber]{}
\rhead[]{\bfseries \themodulecode: Assignment \theassignmentnumber}
\cfoot{}
\lfoot{\includegraphics[width=0.8cm]{ucd.png}}
\rfoot{Page \thepage{} of \numpages}

% define newcommands for user set page header details
\newcommand*{\modulecode}[1]{\def\themodulecode{#1}}
\newcommand*{\course}[1]{\def\thecourse{#1}}
\newcommand*{\assignmentnumber}[1]{\def\theassignmentnumber{#1}}
\newcommand*{\studentname}[1]{\def\thestudentname{#1}}
\newcommand*{\studentnumber}[1]{\def\thestudentnumber{#1}}
\modulecode{}\course{}\assignmentnumber{}\studentname{}\studentnumber{}

% revised question command that tries to encourage page breaks
% to lie between questions rather than within questions
\newcommand{\miquestion}[1][]{\filbreak
  \ifthenelse{\equal{#1}{}}{\question}{\question[#1]}
}

\renewcommand{\subpartlabel}{(\thesubpart)}
