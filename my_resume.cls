%% This LaTeX resume template is created by Ivy Lee on Sept. 08th, 2012.
%% This template is only tested to work with XeTeX.
%% This work is licensed under a Creative Commons Attribution-NonCommercial 3.0 Unported License.

% declare font and paper size
\LoadClass[11pt,a4paper]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2012/09/08 My custom resume class]

% set page margin
\RequirePackage{geometry}
\geometry{margin=1in}

% set line spacing
\renewcommand{\baselinestretch}{0.8}

% set main font style
\RequirePackage{fontspec}
\setmainfont[Mapping=tex-text]{Times New Roman}

% suppress page numbering
\pagestyle{empty}

% suppress section numbering
\setcounter{secnumdepth}{-1}

% suppress indentation on all paragraphs
\setlength\parindent{0pt}

% suppress date
\date{}

% info: name, addr, mobile, email, link
% usage: \info{name}{address}{mobile}{email}{link}
\newcommand{\info}[5]{%
\begin{center}%
\Large\textbf{#1} \\%
\normalsize%
#2 $\textbullet$ #3 \\%
#4 $\textbullet$ #5%
\end{center}%
}

% modify section headings
\renewcommand{\section}{\@startsection
{section}%                   % the name
{1}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\normalfont\bfseries\large\MakeUppercase}} % the style


% modify subsection headings
\renewcommand{\subsection}{\@startsection
{subsection}%                   % the name
{2}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\normalfont\bfseries}} % the style

% organization and location
% usage: \organization{organization}{location}
\newcommand{\organization}[2]{%
  \subsection[#1]{#1 \hfill \normalfont{#2}}%
}

% degree and time
% usage: \degree{degree(,GPA:)}{time}
\newcommand{\degree}[2]{%
  \subsection[#1]{\normalfont{#1} \hfill \normalfont{#2}}%
}

% jobtitle and period
% usage: \jobtitle{jobtitle}{period}
\newcommand{\jobtitle}[2]{%
  \subsection[#1]{\itshape{#1} \hfill \normalfont{#2}}%
}

% skills
% usage: (as tabular environment)
% \begin{skills}
% \item
% \end{skills}
\newenvironment{skills}
{\begin{tabular}{@{}ll}}
{\end{tabular}}

% job details
% usage: (as item list environment)
% \begin{details}
% \item
% \end{details}
\newenvironment{details}
{\begin{itemize}}
{\end{itemize}}