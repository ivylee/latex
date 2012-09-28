\LoadClass[12pt, a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_lecturenote}[2012/09/09 My custom lecture note class]

% set page margin
\RequirePackage{geometry}
\geometry{margin=1in}

% suppress section numbering
\setcounter{secnumdepth}{-1}

% suppress indentation on all paragraphs
\setlength\parindent{0pt}

% for math symbols
\RequirePackage{amsmath,amssymb,amsthm}

% set fonts
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text}
%\setmainfont{Luxi Serif}
%\setsansfont{Luxi Sans}
\setmonofont{Courier}

% for raw code
\RequirePackage{listings}
\lstset{basicstyle=\small\ttfamily}

% notes title
% usage \title{course number}{course name}{date of lecture}
\newcommand{\headline}[3]{%
\begin{center}%
#1 #2 Notes on #3 \\%
\end{center}%
}

% redefine theorem environment
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}

\newenvironment{definition}[1][Definition]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}]}{\end{trivlist}}
\newenvironment{example}[1][Example]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}]}{\end{trivlist}}
\newenvironment{remark}[1][Remark]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1}]}{\end{trivlist}}
