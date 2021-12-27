% Intro Options
\ProvidesClass{resume}[2021-12-12 Dev Resume]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@resume@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{links}{HTML}{33AFFF}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/intro/, BoldFont=Intro-SemiBold]{Intro-Regular}
\hypersetup{
  colorlinks   = true,    % Colours links instead of ugly boxes
  urlcolor     = links,    % Colour for external hyperlinks
  linkcolor    = links,    % Colour of internal links
  citecolor    = links,
  anchorcolor = links
}

% ===== COMMANDS =====

% Command to use Ellograpgh font
\newcommand{\ello}{
    \color{headings}\fontspec[Path = fonts/ello/, BoldFont=EllographCF-Bold]{EllographCF-Regular}\fontsize{9pt}{10pt}\selectfont
}

% Name command
\newcommand{\namesection}[2]{
\centering{
\fontsize{28pt}{60pt}
\fontspec[Path = fonts/ello/]{EllographCF-ExtraLight}\selectfont #1
\color{links}
\fontspec[Path = fonts/ello/]{EllographCF-Light}\selectfont #2
} \\[5pt]
\noindent\makebox[\linewidth]{\color{links}\rule{19cm}{0.5pt}}
\vspace{-15pt}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/ello/]{EllographCF-Light}\fontsize{14pt}{26pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/ello/]{EllographCF-Regular}\fontsize{11pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/ello/]{EllographCF-Regular}\fontsize{11pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/ello/]{EllographCF-Regular}\fontsize{10pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/ello/]{EllographCF-Regular}\fontsize{9pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
