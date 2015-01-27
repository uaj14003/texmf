%
% jscenario.cls coded by pongo
%

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jscenario}[2015/01/21]
\LoadClassWithOptions{tarticle}

\usepackage{furikana}
%\usepackage{lastpage}

\furikanaaki=0.7pt

\special{papersize=\the\paperwidth,\the\paperheight}

  \def\baselinestretch{1.07}\@currsize% 行間を伸ばす

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newdimen\mojisu \mojisu=20zw
\newcounter{gyousu}\setcounter{gyousu}{20}
  \setlength{\textheight}{\c@gyousu\baselineskip}
  \addtolength{\textheight}{\topskip}

\newdimen\scind \scind=1zw
\newdimen\tgind \tgind=2zw
\newdimen\sjind \sjind=0zw
\newdimen\jnind \jnind=6zw

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\@oddhead}{%
\underline{\raise1ex\hbox to\textwidth{\reset@font\rmfamily-~\thepage~-\hfill}}}%
\renewcommand{\@oddfoot}{\relax}


\parindent=-\scind
\setlength{\@totalleftmargin}{\scind}
\@setpar{{\@@par}}%
\dimen0=\mojisu \advance\dimen0 by -\scind
\parshape 1 \@totalleftmargin \dimen0


%\def\○#1\par{\textgt{○#1}\par\vskip2pt}
\def\○#1\par{\textgt{○#1}\par}


\def\——{—\kern-.5zw—\kern-.5zw—} 
\def\「{\noindent\kern.5zw\inhibitglue「} 
\def\（{\noindent\kern.5zw\inhibitglue（} 
\def\〈{\noindent\kern.5zw\inhibitglue〈}
\def\『{\noindent\kern.5zw\inhibitglue『}
%\def\［{\noindent\kern.5zw\inhibitglue［}

\def\　{\relax}%% パラグラフ内に全角の？や！マークがある際に自動的に空白をTeXが自動的に空白を入れてしまう(但し、パラクラフ末では行われない)ので何もしないrelaxを指示。本来はtexファイルに整形する際に削除するべきなのかも。
\def\［{$［$}%% pdfに変換した際に全角"［"が中黒点になってしまための回避措置
\def\］{$］$}
\def\cr  　\par{\vspace{1.5zw}}

\newenvironment{togaki}{%% ト書き整形処理
  \vskip2pt
  \parindent=0zw
  \setlength{\@totalleftmargin}{\tgind}
  \@setpar{{\@@par}}%
  \dimen0=\mojisu \advance\dimen0 by -\tgind
  \parshape 1 \@totalleftmargin \dimen0
}{\vskip2pt}

\newenvironment{suji}{%% 粗筋ページの処理
  \pagestyle{empty}
  \parindent=0zw
  \setlength{\@totalleftmargin}{\sjind}
  \@setpar{{\@@par}}%
  %\dimen0=\mojisu \advance\dimen0 by -\sjind
  %\parshape 1 \@totalleftmargin \dimen0
  \parshape 1 \@totalleftmargin \mojisu
}{\advance \c@page by -\c@page\clearpage}


\newenvironment{jinbu}{%% 人物表ページの処理
  \pagestyle{empty}
  \parindent=-\jnind
  \setlength{\@totalleftmargin}{\jnind}
  \@setpar{{\@@par}}%
  \dimen0=\mojisu \advance\dimen0 by -\jnind
  \parshape 1 \@totalleftmargin \dimen0
}{\advance \c@page by -\c@page\clearpage}


%% *** scenario.cls ends here ***
