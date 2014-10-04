'\"		Copyright (c) 1984 AT&T
'\"		  All Rights Reserved
'\"#ident	"@(#)macros:mmt.src	16.47a"
.nr :a 0 1
.nr :b 0
.nr :c 0
.nr :d 0
.nr :e 0
.nr :f 0
.nr :g 0 1
.nr :h 1
.nr :u 0
.nr ;p 1
.nr !0 0
.nr !1 0
.nr !2 0
.nr !3 0
.nr !N 0  
.nr ;F 0
.nr !V 0
.nr !Y 0
.nr !6 0
.nr !8 0
.nr !9 0
.nr !M 0
.so \n(.D/strings.mm
.if \*(]S .ds ]S \s14\f3\*(}Z\fP\s0
.ds BU \s-2\(bu\s0
.ds EM \(em
.ds F \v'-.4m'\s-3\\n+(:p\s0\v'.4m'
.ds HF 2 2 2 2 2 2 2
.ds Lf LIST OF FIGURES
.ds Lt LIST OF TABLES
.ds Lx LIST OF EXHIBITS
.ds Le LIST OF EQUATIONS
.ds RE 16.29
.ds Rf \v'-.4m'\s-3[\\n+(:R]\s0\v'.4m'
.ds Rp REFERENCES
.ds Tm \v'-0.5m'\s-4TM\s+4\v'0.5m'
.nr Au 1
.nr Cp 0
.nr Cl 2
.nr Ds 1v
.nr Ec 0 1
.nr Eq 0
.nr Ex 0 1
.nr De 0
.nr Df 5
.nr Fg 0 1
.nr Fs 1
.nr H1 0 1
.nr H2 0 1
.nr H3 0 1
.nr H4 0 1
.nr H5 0 1
.nr H6 0 1
.nr H7 0 1
.nr Hb 2
.nr Hi 1
.nr Hs 2
.nr Hu 2
.nr Hy 0
.nr Le 0
.nr Lf 1
.nr Li 5
.nr Ls 6
.nr Lt 1
.nr Lx 1
.nr Np 0
.nr Oc 0
.nr Of 0
.nr !4 0 1
.af !4 01
.nr Pi 3
.nr Ps 1
.nr Pt 0
.nr Pv 0
.nr Rf 0
.nr Si 3
.nr Tb 0 1
.de RD
'fl
.di }w
.rd \\$1
.br
.di
.ie \w\\$3 \{\
.di }x
.ds \\$3 "\\*(}w
.br
.di
'br \}
.if \w\\$2 .rn }w \\$2
.rm }w }x
..
.de B
.ie \\n(.$ .nr ;G \\n(.f
.el .ft 3
.if \\n(.$ .if !\\n(.$-2 \&\f3\\$1\fP\\$2
.if \\n(.$-2 \{.ds }i
.if \\n(.f2 .ds }i \^
.ds }I \&\f3\\$1\fP\\$2\\*(}i
'br \}
.if \\n(.$-2 .if !\\n(.$-4 \\*(}I\f3\\$3\fP\\$4
.if \\n(.$-4 .if !\\n(.$-6 \\*(}I\f3\\$3\fP\\$4\\*(}i\f3\\$5\fP\\$6
.if \\n(.$ .ft \\n(;G
..
.de I
.ie \\n(.$ .nr ;G \\n(.f
.el .ft 2
.if \\n(.$ .if !\\n(.$-1 \&\f2\\$1
.if \\n(.$-1 \{.ds }i \^
.if \\n(.f2 .ds }i
.ds }I \&
.if \w\\$1 .ds }I \&\f2\\$1\fP\\*(}i
'br \}
.if \\n(.$-1 .if !\\n(.$-3 \\*(}I\\$2\f2\\$3
.if \\n(.$-3 .if !\\n(.$-5 \\*(}I\\$2\f2\\$3\fP\\*(}i\\$4\f2\\$5
.if \\n(.$-5 \\*(}I\\$2\f2\\$3\fP\\*(}i\\$4\f2\\$5\fP\\*(}i\\$6
.if \\n(.$ .ft \\n(;G
..
.de RI
.nr ;G \\n(.f
.}S 1 2 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de RB
.nr ;G \\n(.f
.}S 1 3 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de IR
.nr ;G \\n(.f
.}S 2 1 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de IB
.nr ;G \\n(.f
.}S 2 3 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de BR
.nr ;G \\n(.f
.}S 3 1 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de BI
.nr ;G \\n(.f
.}S 3 2 \& "\\$1" "\\$2" "\\$3" "\\$4" "\\$5" "\\$6"
..
.de }S
.ds }i
.if \\$12 .if !\\$5 .ds }i\^
.ie !\\$4 .}S \\$2 \\$1 "\\$3\f\\$1\\$4\\*(}i" "\\$5" "\\$6" "\\$7" "\\$8" "\\$9"
.el \\$3
.ft \\n(;G
..
.de SM
.ie \\n(.$-2 \&\\$1\s-1\\$2\s0\\$3
.el \&\s-1\\$1\s0\\$2
..
.de R
.ft 1
.ul 0
..
.de EQ
.if \\n%>0 .br
.ds ]E \\$1
.di >E
..
.de EN
\!.br
.br
.di
.rm >E
.lt \\n(.lu
.pc
.if \w\\*(10\\*(}E \{\
.ie !\\n(Eq \{\
.ie \\n(:Y>0 \{.if \\n(:Y<\w\\*(10 .nr :Y \w\\*(10
\!\\*(10\h'\\\\n(.lu-\w\\*(10\\*(]Eu-\\\\n(.iu'\\*(]E
.br \}
.el .ie \\n(:B=2 .tl \(ts\(ts\\*(10\(ts\\*(]E\(ts
.el .ie \\n(:B=1 .tl \(ts\h'\\n(Sin'\\*(10\(ts\(ts\\*(]E\(ts
.el .if \\n(:B=0 .tl \(ts\\*(10\(ts\(ts\\*(]E\(ts
'br \}
.el \{\
.ie \\n(:Y>0 \{.if \\n(:Y<\w\\*(10 .nr :Y \w\\*(10
\!\\\\h'-\\\\n(.iu'\\*(]E\\\\h'\\\\n(.iu-\\w\\*(]Eu'\\*(10
.br \}
.el .ie \\n(:B=2 .tl \(ts\\*(]E\(ts\\*(10\(ts\(ts
.el .ie \\n(:B=1 .tl \(ts\h'\\n(Sin'\\*(]E\(ts\(ts\\*(10\(ts
.el .if \\n(:B=0 .tl \(ts\\*(]E\(ts\(ts\\*(10\(ts
'br \} \}
.pc %
.lt
.rm ]E 10
.rr :E
..
.de HC
.ev 0
.hc \\$1
.ev
.ev 1
.hc \\$1
.ev
.ev 2
.hc \\$1
.ev
..
.de H
.if \\n(:F .)D "H:missing FE"
.if \\n(:y .)D "H:missing DE"
.if !\\n(.$ .)D "H:missing arg"
.nr ;0 0
.if \\$1-7 .nr ;0 1
.if \w\\$1-\w'0'u .nr ;0 1
.if \\n(;0 .)D "H:bad arg:\\$1"
.LC 0
.br
.)R
.nr ;1 0\\$1
.if !0\\$1 .nr ;1 \\n(Hu 
.if !\\n(;1 .)D "H:bad arg:\\$1"
.if 2-\\n(;1 .nr H2 0 1
.if 3-\\n(;1 .nr H3 0 1
.if 4-\\n(;1 .nr H4 0 1
.if 5-\\n(;1 .nr H5 0 1
.if 6-\\n(;1 .nr H6 0 1
.if 7-\\n(;1 .nr H7 0 1
.if 2-\\n(;1 \{.if \\n(:S .)w
.if \\n(:C .nr :p 0 1 \}
.SP .5
.nr :u 0
.if \\n(;1-1 .nr H\\n(;1 +1 
.if !\\n(;1-1 \{.nr :u 1 
.SP 1 \}
.if \\n(;1-1 .if (\\n(Ej+1-\\n(;1)&(\\n(;L\{\
.bp
.nr ;L 0\}
.if \\n(;1-1 .if (\\n(Ej+1-\\n(;1)&(\\n(nl-\\n(:J) \{.if \\n(;C .nr ;C 2
.bp \}
.if !\\n(;1-1 \{.if (\\n(Ej+\\n(:S)&(\\n(nl-\\n(:J) \{.if \\n(;C .nr ;C 2
.bp \}
.if !\\n(:u-1 .nr H1 +1 
.if (\\n(:u=1)&(\\n(:S=1) .nr P 1 \}
.nr :u 0
.ds }0 \\n(H1.
.if 0\\$1-1 .as }0 \\n(H2
.if 0\\$1-2 .as }0 .\\n(H3
.if 0\\$1-3 .as }0 .\\n(H4
.if 0\\$1-4 .as }0 .\\n(H5
.if 0\\$1-5 .as }0 .\\n(H6
.if 0\\$1-6 .as }0 .\\n(H7
.if \\n(Ht \{.)I \\n(;1 \\n(H1 \\n(H2 \\n(H3 \\n(H4 \\n(H5 \\n(H6 \\n(H7
.ds }0 \\*(}3.
'br \}
.as }0 \ \ 
.if !0\\$1 .ds }0 
.nr ;0 0
.if !\\n(;1-\\n(Hb .nr ;0 1
.if !\\n(;1-\\n(Hs .nr ;0 2
.ds }2
.if !\\n(;0 .if \w\\$2 .ds }2 "  
.nr ;3 2v
.HX \\n(;1 0\\$1 "\\$2\\$3"
.if \\$1<3 .nr !5 0 1
.af !5 01
.if (\\$1=1)&(\\n(Np=1) .nr !4 0
.di >A
\&\\*(}0\\$2\\$3\\*(}2
.br
.di
.rm >A
.if \\n(;0-1 .nr ;3 +.5v
.ne \\n(;3u+\\n(dnu+.5p-1v
.HY \\n(;1 0\\$1 "\\$2\\$3"
.if \\n(;0 .na
.)I \\n(;1 \\*(HF
.nr ;3 1
.nr ;3 \\*(}3
.ft \\n(;3
.nr :I \\n(.s
.)I \\n(;1 \\*(HP
.if ((\\*(}3=0):(\w\\*(}3>0))&(\\n(;3=3)&(\\n(;0>0) .ps -1
.if !\\*(}3 .if !\\*(}30 .ps \\*(}3
.nr ;2 \w\\*(}0
.if \\n(;0 \{.in +\\n(;2u
.ti -\\n(;2u \}
.nr ;2 \\n(.i
.if !\\n(;1-\\n(Hc .if \\n(;0 .ce
\\*(}0\&\c
.if \\n(;0 \&\\$2\\$3
.if !\\n(;0 \&\\$2\\$3\\*(}2\&\c
.ft 1
.ps \\n(:Ip
.if \\n(;0 'in
.if !\\n(;1-\\n(Cl .if \w\\$2 .)E \\$1 "\\$2"
.SA
.if \\n(;0 .br
.if \\n(;0-1 .SP .5
.if \\n(;0*\\n(Hi*\\n(Pt .if !\\n(Hi-1+\\n(Pt-1 .ti +\\n(Pin
.if 0\\$1*\\n(;0 .if \\n(Hi-1 .ti \\n(;2u
.nr :I 1
.nr !D \\n(nl
.nr !Z \\n(.k
.if (\\$1=1)&(\\nN=5) \{\
.nr Fg 0
.nr Tb 0
.nr Ec 0
.nr Ex 0 \}
.HZ \\n(;1 0\\$1 "\\$2\\$3"
..
.de HM
.af H1 \\$1 1
.af H2 \\$2 1
.af H3 \\$3 1
.af H4 \\$4 1
.af H5 \\$5 1
.af H6 \\$6 1
.af H7 \\$7 1
..
.de HU
.if !\\n(.$ .)D "HU:missing arg"
.H 0 "\\$1" "\\$2"
..
.de LB
.if 4-\\n(.$ .)D "LB:missing arg(s)"
.)L 0\\$1n 0\\$2n 0\\$3n "\\$4" "\\$5" "\\$6" "\\$7"
..
.de )L
.if \\n(:g>5 .)D "LB:too many nested lists"
.if \\n(:g .)A 
.if !\\n+(:g-1 .ds ]b \\n(.i
.nr :b \\n(.iu+0\\$1u 
.nr :c \\n(.iu+0\\$2u 
.nr :d 0\\$3 
.nr :e 0\\$4 
.nr :f 0\\$6 
.if !\w\\$6 .nr :f 1
.ds ]g \\$5
.if !\w\\$5 \{.ds ]g \&
.if \\n(:e .ds ]g 1
'br \}
.nr :a 0 1
.if 0\\$4 .af :a \\$5 1
.if (\\n(:g<=\\n(Ls)&(0\\$7) .SP .5
.fi
.in \\n(:bu
.ti \\n(:bu
..
.de LC
.if \\n(:g-0\\$1 .)B
.if \\n(:g-0\\$1 .LC 0\\$1
..
.de LE
.if (\\n(:I>1)&(\\n(nl-\\n(:J) .nr :I 0
.if \\n(:I<2 .nr :I 0
.ie \\n(:g<1 .)D "LE:mismatched"
.el .)B
.if (\\n(:g<=\\n(Ls)&(\\n(.$>0) .SP .5
.nr :J \\n(nl
..
.de LI 
.if !\\n(:g .)D "LI:no lists active" 
.if (\\n(:g<=\\n(Ls)&(\\n(:f>0) .SP .5
.in \\n(:bu
.if (\\n(:f)&(\\n(:D<1) .ne 1v+.5p
.ds }0 \\*(]g
.if \\n(:e .ds }0 \\n+(:a.
.if \\n(:e-1 .ds }0 \\n(:a)
.if \\n(:e-2 .ds }0 (\\n(:a)
.if \\n(:e-3 .ds }0 [\\n(:a]
.if \\n(:e-4 .ds }0 <\\n(:a>
.if \\n(:e-5 .ds }0 {\\n(:a}
.if \\n(.$-1 .ds }0 \\$1\ \\*(}0
.if \\n(.$=1 .ds }0 \\$1
.nr ;0 \w\\*(}0
.nr ;1 \\n(:c
.if \\n(:d .nr ;1 \\n(:bu-\\n(:du-\\n(;0u
.if !\\n(;1 .nr ;1 0
.nr ;0 \\n(:bu-\\n(;1u-\\n(;0u
.ti \\n(;1u
.if !\\n(;0 .nr ;0 \w u
.if \w\\*(}0 \&\\*(}0\h\\n(;0u\&\c
..
.de AL
.nr !D 0
.if !\\n(.$-1 .)L \\n(Lin 0 2n 1 "\\$1"
.if \\n(.$-1 .if !\\n(.$-2 .LB 0\\$2 0 2 1 "\\$1"
.if \\n(.$-2 .if !\w\\$2 .)L \\n(Lin 0 2n 1 "\\$1" 0 1
.if \\n(.$-2 .if \w\\$2 .LB 0\\$2 0 2 1 "\\$1" 0 1
..
.de BL
.if \\n(.$<1 .)L \\n(Pin 0 1n 0 \\*(BU
.if \\n(.$=1 .LB 0\\$1 0 1 0 \\*(BU
.if \\n(.$>1 \{.ie !\w\\$1 .)L \\n(Pin 0 1n 0 \\*(BU 0 1
.el .LB 0\\$1 0 1 0 \\*(BU 0 1 \}
..
.de DL
.if \\n(.$<1 .)L \\n(Pin 0 1n 0 \(em
.if \\n(.$=1 .LB 0\\$1 0 1 0 \(em
.if \\n(.$>1 \{.ie !\w\\$1 .)L \\n(Pin 0 1n 0 \(em 0 1
.el .LB 0\\$1 0 1 0 \(em 0 1 \}
..
.de ML
.if \\n(.$<1 .)D "ML:missing arg"
.nr ;0 \w\\$1u/3u/\\n(.su+1u
.ie \\n(.$<2 .LB \\n(;0 0 1 0 "\\$1"
.el .if \\n(.$<3 .LB 0\\$2 0 1 0 "\\$1"
.if \\n(.$>2 \{.ie !\w\\$2 .LB \\n(;0 0 1 0 "\\$1" 0 1
.el .LB 0\\$2 0 1 0 "\\$1" 0 1 \}
..
.de RL
.if \\n(.$<1 .LB 6 0 2 4
.if \\n(.$=1 .LB 0\\$1 0 2 4
.if \\n(.$>1 \{.ie !\w\\$1 .LB 6 0 2 4 1 0 1
.el .LB 0\\$1 0 2 4 1 0 1 \}
..
.de VL
.if \\n(.$<1 .)D "VL:missing arg"
.ie \\n(.$<3 .LB 0\\$1 0\\$2 0 0
.el .LB 0\\$1 0\\$2 0 0 \& 0 1
..
.de P
.if !(((\\n(!D=\\n(nl):(\\n(!D=(\\n(nl-.5v)))&(\\n(!Z=\\n(.k)&(\\n(Np=0)) \{\
.br
.nr ;1 \\n(:J
.nr ;2 \\n(nl
.SP \\n(Psu*.5
.if !\\n(:D .ne 1v+.5p
.ie !\\n(;1-\\n(:J .nr ;2 \\n(;2-\\n(:J
.el .nr ;2 \\n(nl-\\n(:J
.nr :J \\n(;2
.if \\n(.$>0&(0\\$1) .ti +\\n(Pin
.if \\n(.$=0 \{\
.if \\n(Pt=1 .ti +\\n(Pin
.if \\n(Pt>1&(\\n(:I) .ti +\\n(Pin
.if \\n(Pt>1&(\\n(:I=0)&(\\n(:J>0) .ti +\\n(Pin \}
.if \\n(Np \{\
\\n(H1.\\n+(!4\ \ \c
'br \}
.nr :I 1 \}
.nr :u  0
..
.de nP
.P 0
.de )p
'ti 6n
.de )p
'ti 0
.rm )p
.wh \\n(.du+\\n(.L+\\n(.L
\\\\..
.ch )p \\n(.du+\\n(.L+\\n(.L
\\..
.wh \\n(.du+\\n(.L )p
\\n(H2.\\n+(!5\h'|6n'\\c
..
.de S
.if !\\n(:Q .nr :Q \\nS
.if !\\n(.$ .nr ;0 \\n(:Q
.if \\n(.$ .if !\w\\$1 \{\
.nr ;J 2
.nr ;0 \\n(:P \}
.if \w\\$1 \{\
.ie \\$1D \{\
.nr ;J 1
.nr ;0 \\nS \}
.el \{\
.ie \\$1C \{\
.nr ;J 2
.nr ;0 \\n(:P \}
.el \{\
.ie \\$1P \{\
.nr ;J 3
.nr ;0 \\n(:Q \}
.el \{.if !\\n(;J \{\
.nr ;0 \\n(:P
.nr ;0 \\$1 \}\}\}\}\}
.if 0\\$1-99 .nr ;0 \\nS
.if !\\n(;0 .)D "S:bad arg \\$1"
.nr :Q \\n(:P
.nr :P \\n(;0
.ps \\n(:Pp
.nr ;J 0
.if !\\n(!Q .nr !Q \\nS+2
.if !\\n(.$-1 \{\
.ie \\n(.$ \{\
.nr ;K 1
.nr ;7 \\n(.s+2 \}
.el \{\
.nr ;K 3
.nr ;7 \\n(!Q \}\}
.if \\n(.$-1 .if !\w\\$2 \{\
.nr ;K 2
.nr ;7 \\n(!P \}
.if \w\\$2 \{\
.ie \\$2D \{\
.nr ;K 1
.nr ;7 \\n(.s+2 \}
.el \{\
.ie \\$2C \{\
.nr ;K 2
.nr ;7 \\n(!P \}
.el \{\
.ie \\$2P \{\
.nr ;K 3
.nr ;7 \\n(!Q \}
.el \{.if !\\n(;K \{\
.nr ;7 \\n(!P
.nr ;7 \\$2 \}\}\}\}\}
.if 0\\$2-99 .nr ;7 \\n(.s+2
.if !\\n(;7 .)D "S:bad arg \\$2"
.nr !Q \\n(!P
.nr !P \\n(;7
.vs \\n(!Pp
.nr ;K 0
..
.rn pn ]N
.de pn
.nr :Z 1
.]N \\$1
..
.de SA
.if \\n(.$ \{.if \\$1-1 .)D "SA:bad arg:\\$1"
.nr :h 0\\$1 \}
'na
.if \\n(:h 'ad
..
.de SK
.br
.nr ;d 1
.bp
.nr ;9 0\\$1-1
.if \\n(;9+1 .rs
.if \\n(;9+1 .SK \\n(;9
.rr ;9
.nr ;d 0
..
.de OP
.SK
.if !\\nP%2 .SK 1
..
.de SP
.br
.ie \\n(:D .)S \\$1
.el .ie !'\\n(.z'' .)S \\$1
.el \{.rr ;D ;E
.nr ;4 1v
.if \\n(.$ .nr ;4 \\$1v
.if !(\\n(nl=\\n(:N) .nr :A 0
.nr ;4 -\\n(:Au
.if \\n(;4 \{.sp \\n(;4u
.nr :A +\\n(;4u \}
.nr :N \\n(nl \}
..
.de )S
.br
.if !'\\n(.z'\\*(}D' .rr ;D ;E
.nr ;4 1v
.if \\n(.$ .nr ;4 \\$1v
.if !(\\n(.d=\\n(;D) .nr ;E 0
.nr ;4 -\\n(;Eu
.if \\n(;4 \{.sp \\n(;4u
.nr ;E +\\n(;4u \}
.nr ;D \\n(.d
.ds }D \\n(.z
..
.de TS
.if (\\n(:D=0)&(\\n(Ds>0) .SP
.if \\$1H \{.br
'ne 5v     
.wh \\n(nlu+\\n(.tu-2v #f
.di >t
.nr ;A 1 \}
..
.de TH
.if \\n(.du>0.5v \{.nr T. 0
.T# 0 \}
.br
.di
.nr ;I \\n(.i
.nr ;B 1
.if \\n(;T .if !\\$1N .nr ;T 0
.in 0
.mk #a
.mk #b
.mk #c
.mk #d
.mk #e
.mk #f
.if \\n(;T=0 \{\
.>t
.nr ;T 1	\}
.in \\n(;Iu
.mk #T
..
.de TE
.if (\\n(:D=0)&(\\n(Ds>0) .SP
.if (\\n(;A>0)&(\\n(;B=0) \{.br
.di
.)D "TE: used TS H but no TH" \}
.rr ;A ;B ;h ;D ;E
.rm T#       
.rr #a       
.rm a+ b+ c+ d+ e+ f+ g+ h+ i+ j+ k+ l+ n+ m+
.rr 32 33 34 35 36 37 38 40 79 80 81 82
.rr a| b| c| d| e| f| g| h| i| j| k| l| m|
.rr a- b- c- d- e- f- g- h- i- j- k- l- m-
..
.de )A
.af :a 1
.ds ]a \\n(:a \\*(]a
.ds ]b \\n(:b \\*(]b
.ds ]c \\n(:c \\*(]c
.ds ]d \\n(:d \\*(]d
.ds ]e \\n(:e \\*(]e
.ds ]f \\n(:f \\*(]f
.ds ]h \\*(]g \\*(]h
..
.de )B
.br
.nr :g -1
.)C nr :a ]a \\*(]a
.)C nr :b ]b \\*(]b
'in \\n(:bu
'ti \\n(:bu
.)C nr :c ]c \\*(]c
.)C nr :d ]d \\*(]d
.)C nr :e ]e \\*(]e
.)C nr :f ]f \\*(]f
.)C ds ]g ]h \\*(]h
.af :a 1
.if \\n(:e .af :a \\*(]g
..
.de )C
.\\$1 \\$2 \\$4
.ds \\$3 \\$5 \\$6 \\$7 \\$8 \\$9
..
.de )D
'di
'di
.nr :D 0
.fl
********************
.br
ERROR:(\\n(.F)input line \\n(.c:\\$1
.br
********************
.tm ********************
.tm ERROR:(\\n(.F)input line \\n(.c:\\$1
.tm ********************
.if !\\nD .ab \&
..
.de TB
.nr !1 1
.ie \\nN=5 .)F TABLE 1 \\n+(Tb "\\$1" "\\n(H1-" 0
.el .)F TABLE 1 \\n+(Tb "\\$1" "\\$2" 0\\$3
..
.de EC
.nr !2 1
.ie \\nN=5 .)F Equation 2 \\n+(Ec "\\$1" "\\n(H1-" 0
.el .)F Equation 2 \\n+(Ec "\\$1" "\\$2" 0\\$3
..
.de EX
.nr !3 1
.ie \\nN=5 .)F Exhibit 3 \\n+(Ex "\\$1" "\\n(H1-" 0
.el .)F Exhibit 3 \\n+(Ex "\\$1" "\\$2" 0\\$3
..
.de FG
.nr !0 1
.ie \\nN=5 .)F Figure 0 \\n+(Fg "\\$1" "\\n(H1-" 0
.el .)F Figure 0 \\n+(Fg "\\$1" "\\$2" 0\\$3
..
.de )F
.nr ;0 \w\\$5
.nr ;1 0
.nr ;1 0\\$6
.ds }0 \\$3
.if \\n(;0 .ds }0 \\$5\\$3
.if \\n(;1*\\n(;0 .ds }0 \\$3\\$5
.if \\n(;1-1*\\n(;0 .ds }0 \\$5
.ds }0 \\$1\ \\*(}0
.ie (\w\\$4)&(\\n(Of=0) .as }0 .\ \ 
.el .if \\n(Of .as }0 " -\ 
.nr ;0 \w\\*(}0
.ll \\nWu
.nr ;1 \\n(.lu-\\n(;0u-\w\\$4u+1u
.if (\\n(:B<2)&(\\n(;1>0) \{\
.in 0  
.ce \}
.if !\\n(;1 \{\
.if !\\n(.u .nr ;U 1  
.if \\n(:B=2 .ce 0
.fi
.in \\n(;0u
.ti -\\n(;0u \}
\f3\\*(}0\fP\\$4
.ll
.in
.if \\n(:B=2 .ce 9999
.if \\n(;U \{\
.nf
.nr ;U 0 \}
.if (\\n(Lf=1&(\\$2=0)):(\\n(Lt=1&(\\$2=1)):\
(\\n(Le=1&(\\$2=2)):(\\n(Lx=1&(\\$2=3)) \{\
.ds }3
.if \\n(:S .ds }3 \\n(H1
.ie \\n(:y=1 \{\
.ie \\n(:B=3 \{\
\!\\!.am >L
\!\\!.if \\$2=\\\\\\\\\\\\\\\\$1 .)T 1 1 "\\*(}0" "\\$4" \\\\\\\\nP \\*(}3
\!\\!\\\\..
'br \}
.el \{\
\!.am >L
\!.if \\$2=\\\\\\\\$1 .)T 1 1 "\\*(}0" "\\$4" \\\\nP \\*(}3
\!\\\\..
'br \} \}
.el \{\
.am >L
.if \\$2=\\\\$1 .)T 1 1 "\\*(}0" "\\$4" \\nP \\*(}3
\\.. \} \}
..
.de )I
.nr ;9 0\\$1+1
.ds }3 \\$\\n(;9
.rr ;9
..
.de )E
.ds }3
.if \\n(:S .ds }3 \\n(H1
.am >C
.)T \\n(;1 \\$1 "\\*(}0" "\\$2" \\nP \\*(}3
\\..
..
.de )T
.nr ;0 \w\\$5
.if \w\\$6 .nr ;0 +\w'-'u+\w\\$6u
.if \\n(;0-\\n(:a .nr :a \\n(;0
.)I \\$1 \\n(H1 \\n(H2 \\n(H3 \\n(H4 \\n(H5 \\n(H6 \\n(H7
.if \w\\$3-\\*(}3 .nr H\\$1 \w\\$3
..
.de )U
.if !0\\$1-\\n(:b .sp \\n(:cu*.5v
.)I \\$1 \\*(}0
.nr ;0 \\*(}3
.)I \\$1 \\*(Ci
.nr ;1 \\*(}3
.)I \\$1 \\*(}2
.nr ;2 \\*(}3
.ds }3 \\$5
.if \\n(.$-5 .ds }3 \\$6\(hy\\$5
.nr :e \\n(:au-\w\\*(}3u+2n
.ds }3 \h\\n(:eu\\*(}3
.ds }y
.nr ;0 -\w\\$3
.if \\n(;0 .as }y \h\\n(;0u
.if 2-0\\$1 .as }y "\\$3
.if 0\\$1-1 .ds }y "\\$3\\*(}y
.if !0\\$2 .ds }y
.ll \\nWu-\\n(:au-3n
.in \\n(;2u
.if !0\\$2 .in \\n(;1u
.ti \\n(;1u
.fi
.di >A
\!.cs 3 48
.if !0\\$1-\\n(:d .if !\\n(:f \\*(}y\\$4\\\\f3\\a\\\\fP\\*(}3
.if !0\\$1-\\n(:d .if \\n(:f \\*(}y\\$4\\t\\*(}3
.if 0\\$1-\\n(:d \\*(}y\\$4\\*(}3
.br
\!.br
\!.cs 3
.di
.br
.ll \\nWu
.ne \\n(dnu+.5p-1v
.ta \\nWu-\\n(:au-2n
.nf
.in 0
.na
.>A
..
.de )Z
.in 0
.ie !\\n(Cp \{\
.SK
.rs
.sp 3v
.ce 1 \}
.el .sp 2v
\\$1
.sp 1v
.nr :a 0
.nr H1 0
.af H1 1
.>L \\$2
.rn )T )V
.rn )U )T
.ds }0 \\n(H1
.ds Ci 0
.ds }2 \\n(H1
.>L \\$2
.rn )T )U
.rn )V )T
..
.de TC
.LC 0
.if \\n(:F .FE
.if \\n(:y .DE 
.if \\n(!N=1 .NE 
.)N
.)w
.if \\n(;R .RP 0 1
.)R
.rm )E )F DE DF DS FD FE FG FS H HU TB
.if !\\nP-1 .if \\nN .if !\\nN-1 .rn }t }b
.if !\\nP-1 .if \\nN .if !\\nN-1 .nr N 0 
.rm }t }e }o
.rs
.if \\n(;C .nr ;C 2
.bp
.ie \\n(Oc .nr P 1 
.el \{\
.rm }f }p
.nr ;g 1 1
.af ;g i
.ds }b ''- \\\\n(;g -''
.am )b
.nr ;g +1
\\..
'br \}
.nr N 0
.rs
.if !\\n(.$-4 .TX
.if \\n(;C .ll \\n(:Lu
.if !\\n(.$-4 .TY
.ce 99
.if \\n(.$-4 \\$5
.if \\n(.$-5 \\$6
.if \\n(.$-6 \\$7
.if \\n(.$-7 \\$8
.if \\n(.$-8 \\$9
.if \\n(.$-4 .sp
.ce 0
.sp
.if \\n(;C .ll \\n(:lu
.nr ;m \\n(.hu+2v
.nr :b 1
.if \w\\$1 .nr :b 0\\$1
.nr :c 1
.if \w\\$2 .nr :c 0\\$2
.nr :d 2
.if \w\\$3 .nr :d 0\\$3
.nr :f 0
.if \w\\$4 .nr :f 0\\$4
.nr H1 0
.af H1 1
.nr H2 0
.af H2 1
.nr H3 0
.af H3 1
.nr H4 0
.af H4 1
.nr H5 0
.af H5 1
.nr H6 0
.af H6 1
.nr H7 0
.af H7 1
.nr :a 0
.>C
.rn )T )V
.rn )U )T
.ds }0 \\n(H1 \\n(H2 \\n(H3 \\n(H4 \\n(H5 \\n(H6 \\n(H7
.nr H2 +\\n(H1
.nr H3 +\\n(H2
.nr H4 +\\n(H3
.nr H5 +\\n(H4
.nr H6 +\\n(H5
.nr H7 +\\n(H6
.if !\w'\\*(Ci' .ds Ci 0 \\n(H1 \\n(H2 \\n(H3 \\n(H4 \\n(H5 \\n(H6
.ds }2 \\n(H1 \\n(H2 \\n(H3 \\n(H4 \\n(H5 \\n(H6 \\n(H7
.>C
.rm >C HX
.rn )T )U
.rn )V )T
.if (\\n(Lf=1)&(\\n(!0>0) .)Z "\\*(Lf" 0
.if (\\n(Lt=1)&(\\n(!1>0) .)Z "\\*(Lt" 1
.if (\\n(Lx=1)&(\\n(!3>0) .)Z "\\*(Lx" 3
.if (\\n(Le=1)&(\\n(!2>0) .)Z "\\*(Le" 2
.)R
..
.de TY
.ce
CONTENTS
..
.de TL
.nr :D 2 
.nr ;c 2 
.nr ;z 0 
.nr :V 0 
.nr :1 \\n(.i 
.if \\nC=4 .ls 1 
.if \\nC=5 .ls 1 
.ds >1 \\$1
.ds >2 \\$2
'nr ;y 1
.eo
'de >T AU
..
.de AU
.ec
.nr :D 1 
.nr ;c 1 
.if !\\n(;y 'nf
.if \\n(;y .>9 
.rm TL
.ll \\nWu
.da >z
'if \\nE 'ft 3
.if (\\n(;z>0)&(\\n(Au>0) .sp 
\\$1
.if \\n(Au>0 \{.if \w\\$3 .ie \\$3HP HP\ \&\c
.el \\$3\ \&\c
.if \w\\$4 \\$4
.if \w\\$3 .if !\w\\$4 \&
.if \w\\$6 \\$6\ \&\c
.if \w\\$5 x\\$5
.if \w\\$6 .if !\w\\$5 \&
'br \}
.if \\n(.$-6 \\$7
.if \\n(.$-7 \\$8
.if \\n(.$-8 \\$9
.br
'if \\nE 'ft 1
.di
.nr ;z +\\n(dn
.nr dn 0
'in \\n(:1u
.if !\\n(:V .ds }v \\$3-\\$4-\\$2
.if \\n(:V .as }v /\\$2
.da >v
'if \\nE 'ft 3
.sp 3
\\$1
.br
'if \\nE 'ft 1
.di
.nr :V +\\n(dnu
.nr dn 0
.nr :H 0
.ds }L \\$3
.if '\\$3'AL' .ds }L }B
.if '\\$3'ALC' .ds }L }B
.if '\\$3'CP' .ds }L PY
.if '\\$3'FJ' .ds }L HO
.if '\\$3'HK' .ds }L HL
.if '\\$3'HOH' .ds }L HO
.if '\\$3'HOH' .nr :H 1
.if '\\$3'HP' .ds }L }A
.if '\\$3'HR' .ds }L RR
.if '\\$3'INH' .ds }L }I
.if '\\$3'IW' .ds }L IH
.if '\\$3'IX' .ds }L IH
.if '\\$3'LC' .ds }L WV
.if '\\$3'LZ' .ds }L }K
.if '\\$3'MO' .ds }L }M
.if '\\$3'MT' .ds }L RR
.if '\\$3'PK' .ds }L }P
.if '\\$3'RD' .ds }L }E
.if '\\$3'RR' .ds }L PY
.if '\\$3'SF' .ds }L CP
.if '\\$3'SZ' .ds }L }F
.if '\\$3'WI' .ds }L }W
.am >4
.ps +1
.ft 2
\\$1
.br
.ps
.ft 1
.if \\\\n(:2 .sp .5v
.if \\\\n(:2 \\*(}Z
.if \\\\n(:2 .if \\n(:H \\\\*(}H
.if \\\\n(:2 \\\\*(\\*(}L
.if \\\\n(:2 .sp .5v
.ds }z \\\\*(\\*(}L
\\..
..
.de >9
.di }z
'll \\nWu-34n
'nh
'na
'fi
'if \\nE 'ft 3
.>T
.if (\w'\\*(>1')&(\w'\\*(>2') \{\
.ie '\\*(>1'\\*(>2' \{\
.br
Work Project No. and Filing Case \\*(>1
.br \}
.el \{\
.br
Work Project No. \\*(>1
.br
File Case \\*(>2
.br \} \}
.if (\w'\\*(>1'=0):(\w'\\*(>2'=0) \{\
.ie \w'\\*(>1' \{\
- Work\ Project\ No.\ \\*(>1
.br \}
.el .ie \w'\\*(>2' \{\
- Case\ \\*(>2
.br \}
.el .br \}
.ll \\nWu
.di
.if \\nE .ft 1
.nr :9 \\n(dn 
.nr dn 0
.nr ;y 0
'nf
.rm >9
..
.de AT
.da >v
'if \\nE 'ft 3
.if \\n(.$-0 \\$1
.if \\n(.$-1 \\$2
.if \\n(.$-2 \\$3
.if \\n(.$-3 \\$4
.if \\n(.$-4 \\$5
.if \\n(.$-5 \\$6
.if \\n(.$-6 \\$7
.if \\n(.$-7 \\$8
.if \\n(.$-8 \\$9
.br
'if \\nE 'ft
.di
.nr :V +\\n(dnu
.nr dn 0
..
.de OK
.nr :D 1 
.nr ;c 1  
.de >7
.ps -1
.if \\n(.$-0 \\$1
.if \\n(.$-1 \\$2
.if \\n(.$-2 \\$3
.if \\n(.$-3 \\$4
.if \\n(.$-4 \\$5
.if \\n(.$-5 \\$6
.if \\n(.$-6 \\$7
.if \\n(.$-7 \\$8
.if \\n(.$-8 \\$9
.ps
\\..
.rm OK
..
.de TM
.nr :D 1 
.nr ;c 1 
.de >8
.if \\nE .ft 3
.if \\n(.$-0 \\$1
.if \\n(.$-1 \\$2
.if \\n(.$-2 \\$3
.if \\n(.$-3 \\$4
.if \\n(.$-4 \\$5
.if \\n(.$-5 \\$6
.if \\n(.$-6 \\$7
.if \\n(.$-7 \\$8
.if \\n(.$-8 \\$9
.if \\nE .ft 1
\\..
.nr ;x \\n(.$+1 
.rm TM
..
.de AS
.nr :D 3 
.nr ;c 3 
.rm TL
.nr :t 0\\$1 
.if \\n(:t=1 .nr ;s \\n(:s 
.nr :3 0
.if \\n(.$-1 .nr :3 0\\$2n 
.nr ;N \\n(:1  
'in \\n(:1u
'fi
.SA
'nh
'if \\n(Hy 'hy 14
.di >3
.ll 0u-2u*\\n(:3u+\\nWu
.ce
.ul
.ie '\\$3'ER' ERRATA
.el .ie '\\$3'AD' ADDENDUM
.el ABSTRACT
.SP 1.5
.ns
.nr :I 1
.rm AS
..
.de AE
.br
.di
'nf
'nh
.nr ;3 \\n(dn
.nr ;6 \\n(;3 
.ll \\nWu
'in \\n(:1u
.if \\n(:t=1 .nr :s \\n(;s 
.rm AE
..
.de MT
.if \\n(!N=1 .NE
.nr :D 0 
.nr ;c 0  
.if !\\n(;y 'nf
.rm TL TM OK AS AE AF AU
.ll \\nWu
.rn TP >Y 
.in \\n(:1u
.rn >Y TP
.rn )K >Y
.ie \w\\$1u<2n .if !0\\$1=4 .if \\n(.$=2 .ds ]n \\$2
.el .if \\n(.$=2 .ds ]n \\$2
.if !\\n(.$ .>6
.if \\n(.$ .if \w\\$1u-\w'0'u .>6 "\\$1"
.if \\n(.$ .nr ;y 0\\$1
.if \\n(.$ .if !\\n(;y .>6 ""
.if \\n(.$ .if \\n(;y-4 .>x 
.if \\n(.$ .if \\n(;y-3 .>5 "\\$2"
.if \\n(.$ .if \\n(;y-2 .>6 "ADMINISTRATIVE MEMORANDUM"
.if \\n(.$ .if \\n(;y-1 .>6 "INTERNAL MEMORANDUM"
.if \\n(.$ .if \\n(;y .>6 "TECHNICAL MEMORANDUM"
.)R
.ft 1
.ft 1
.ta .5i 1i 1.5i 2i 2.5i 3i 3.5i 4i 4.5i 5i 5.5i 6i
.ns
.if \\nC=4 .ls 2 
.if \\nC=5 .ls 2 
.>Y
.]N \\nP+1
.rm >Y MT
..
.de >x
.rm >6 >5 )Y )X
.ta \\nWu-1.4i
.br
.rs
.sp 1
.if \\n(Pv \{\
.ce
PRIVATE\h'-\w'PRIVATE'u'\l'\w'PRIVATE'u'
.sp \}
.sp |4v
.}z
.br
.rs
.mk :2
.sp |12v
.in \\nWu-1.4i
.ti +6
.ie \\nE \{\
\f3\\*(DT\fP
'br \}
.el \{\
\\*(DT
'br \}
.if \\n(:2u-\\n(nlu .sp |\\n(:2u
.sp 2v
.rm >x
..
.de >6 
.rm >5 >x )Y
.di ]t  
.ta \\nWu-1.75i 
.br
.rs
.sp 1
.if \\n(Pv \{\
.ce
PRIVATE\h'-\w'PRIVATE'u'\l'\w'PRIVATE'u'
.sp \}
.sp |1.25i
.ie !(\\nA=3) \t\\*(]S 
.el .if \w\\*(}Z \t\s16\f3\\*(}Z\fP\s0
.vs 12p
.sp |1.9i
.mk :2
\!.po -\w'\s8subject:\s0'u+1n
\s8subject:\s0
.rt -1
\!.po
.}z
.br
.rt \\n(:2u
.in \\nWu-1.4i
.ps 8
.ti -6n
date:
.ps
.rt -1
.ie \\nE \{\
\f3\\*(DT\fP
'br \}
.el \{\
\\*(DT
'br \}
.sp
.ps 8
.ti -6n
from:
.ps
.rt -1
.if \\nE .ft 3
.>z
.if \\nE .ft
.in \\n(:1u
.if \\n(;x \{.sp
.in \\nWu-1.4i
.>8
.in \\n(:1u \}
.br
.if \\n(:9u-\\n(;zu-2v-\\n(;xv .sp \\n(:9u-\\n(;zu-2v-\\n(;xv
.sp 3
.di
.rs
.ie \\n(;3 \{\
.ie \\n(:t=2 \{\
.af !S \\gP 
.af P i
.]t  
.in +\\n(:3u
.>3  
.sp 3
.)N  
.in -\\n(:3u
.wh 0 )k  
.bp
.nr P 1  
.af P \\g(!S 
.]t  
.wh 0 )h  
.if \\n(:G \{\
.nr :s +1  
.da >y
.>d
\!.			br
.di
'nr dn +4v+.5p
'nr :o +\\n(dnu
.nr dn 0
'if !\\n(.pu-\\n(nlu-.5p-\\n(:ou 'nr :o \\n(.pu-\\n(nlu-.5p
'if !\\n(:ou-\\n(:mu 'nr :o \\n(:mu
'ch )f -\\n(:ou 
'br \}
.tm WARNING:  Approved ITDS Document Cover Sheet not available with this package.
.rm CS \}  
.el .ie \\n(:t=1 .]t  
.el \{\
.]t  
.in +\\n(:3u
.>3  
.sp 3
.in -\\n(:3u \} \}
.el .]t  
.ns
.ne 10
.ce
.ul
.if !\\n(.$ TECHNICAL MEMORANDUM
.if \\n(.$ .if \w\\$1 \\$1
.SP 3 
.ce 0
.ul 0
.if !\\n(:t=2 .)X
.nr ;M 1 
.rm )X >6
..
.de >5
.rm >6 >x )X
.br
.rs
.sp 1
.ie \\n(Pv \{\
.ce
PRIVATE\h'-\w'PRIVATE'u'\l'\w'PRIVATE'u'
.sp 4 \}
.el 'sp 5
.in 0
.ds }A "South Plainfield, New Jersey 07080
.ds }B "Allentown, Pennsylvania 18103
.ds }E "Reading, Pennsylvania 19604
.ds }F "Springfield, New Jersey 07081
.ds }H "Crawford Hill Laboratory
.ds }I "Indianapolis, Indiana 46250
.ds }K "Lincroft, New Jersey 07738
.ds }M "Morristown, New Jersey 07960
.ds }P "Parsippany, New Jersey 07054
.ds }W "Ward Hill, Massachusetts 01830
.ds AK "Norcross, Georgia 30071
.ds CB "Columbus, Ohio 43213
.ds CH "Chester, New Jersey 07930
.ds CP "Summit, New Jersey 07901
.ds DR "Denver, Colorado 80234
.ds HL "Short Hills, New Jersey 07078
.ds HO "Holmdel, New Jersey 07733
.ds IH "Naperville, Illinois 60566
.ds IN "Indianapolis, Indiana 46206
.ds MH "Murray Hill, New Jersey 07974
.ds MV "North Andover, Massachusetts 01845
.ds PY "Piscataway, New Jersey 08854
.ds RR "Middletown, New Jersey 07748
.ds WB "West Long Branch, New Jersey 07764
.ds WH "Whippany, New Jersey 07981
.ds WV "Warren, New Jersey 07060
.ll \\nWu
.fi
.na
.nh
.di >6
.ps +2
.vs \\n(.sp+4p
.if \\nE .ft 3
.nr ;X 1
.>T
.nr ;X 0
.ps
.vs \\n(.sp+2p
.if \\nE .ft 1
.br
.di
.nf
.ce 1000
.>6
.nr :2 0
.if \w\\$1 .nr :2 1
.ul 0
.sp .5v
.>4
.br
.if !\\n(:2 .sp .5v
.if !\\n(:2 \\*(}Z
.if !\\n(:2 .if \\n(:H \\*(}H
.if !\\n(:2 \\*(}z
.ce 0
.sp
.if \\n(;3 .if !\\n(:t .in +\\n(:3u
.if \\n(;3 .if !\\n(:t .>3
.if \\n(;3 .if !\\n(:t .in -\\n(:3u
.if \\n(;3 .if !\\n(:t .sp 
.ns
.br
.)Y
.rm )Y >6 PY MH WH HO RR }H WB }A }B }E HL }I
.rm AK CP CH CB DR IN IH MV WV SG )N )M
.rm }P }M }W }F }K
.de NS
.br
.di
.di >Y
\\..
.de NE
.br
.di
\\..
.rm >5
..
.de )K
.ie (\\n(;F=5)&(\\n(:D) .)D "check WA, WE, IA, IE, LT sequence"
.el .if \\n(:D .ie !\\n(:t=2 .)D "check TL, AU, AS, AE, MT sequence"
.el .)D "check TL, AU, AS, AE, NS, NE, MT sequence"
.rm )X )Y >T >x >z >1 >2 >3 >4 >5 >6 >7 >8 >9 }z
.rr ;x ;y ;z :D :1 :2 :3 :9 ;0 ;1 ;2 ;3 
.rm TL AU TM AF AS AE OK
.rm )K
..
.de )X
.di >S
\!.tm WARNING:  Approved ITDS Document Cover Sheet not available with this package.
.di
..
.de )Y
.di >S
\!.bp
\!.in 0
\!.ce 1000
\!.ul 1000
.>6
\!.ul 0
\!.sp .5v
.>4
\!.br
\!.if \\n(:2=0 .sp .5v
\!.if \\n(:2=0 \\*(}Z
\!.if \\n(:2=0 .if \\n(:H \\*(}H
\!.if \\n(:2=0 \\*(}z
\!.ce 0
\!.sp 
\!.in 0
\!.in +\\n(:3u
.>3
\!.in -\\n(:3u
\!.nr ;0 1
.di
.di >b
.nf
.na
.>c
.br
.di
.rm >b
.if \\n(dn \{\
.nr ;c \\n(.pu-\\n(dnu-8v
.da >S
\!.ie \\n(;cu-\\\\n(nlu .sp \\n(;cu-\\\\n(nlu
\!.el .sp .5v
.nr ;c 0
\l'60p'
.>c
.di
.br \}
..
.de CS
.LC 0
.if \\n(:F .FE
.if \\n(:y .DE 
.if \\n(!N=1 .NE 
.)N
.)w 
.if \\n(;R .RP 0 1
.if !\\nP-1 .if \\nN .if !\\nN-1 .rn }t }b
.if !\\nP-1 .if \\nN .if !\\nN-1 .nr N 0 
.rm }t }e }o
.rm }b }f }p
.br
.)R
.ll \\nWu
.in 0
.nr !O \\nO
.nr !W \\nW
.br
.rs
.nf
.>S
.nr O \\n(!O
.nr W \\n(!W
.po \\nOu
.ll \\nWu
.lt \\nWu
.)R 
.ta .5i 1i 1.5i 2i 2.5i 3i 3.5i 4i 4.5i 5i 5.5i 6i
.nr ;0 0
.nr ;1 0
.nr ;2 0
.rm >S
..
.de FC
.)w
.nf
.ls 1
.in (\\n(.lu/2u)
.rs
.ne \\n(:Vu+3v+.5p
.rm LT
.ie \\n(;F \{\
.sp 2 
.ie \\n(;F<3 \{\
.ie \\n(.$ \\$1
.el Yours very truly, \}
.el .if \\n(;F=3 \{\
.in 0
.ie \\n(.$ \\$1
.el Yours very truly, \} \}
.el \{\
.sp
.ie \\n(.$ \\$1
.el Yours very truly, \}
.in
.fi
..
.de SG
.if \\n(:F .)D "SG:missing FE"
.if \\n(:y .)D "SG:missing DE"
.LC 0 
.)w
.)R 
.in 0
.nf
.ls 1
.ne 5v+.5p
.rs
.ie \\n(;F \{\
.ie \\n(;F<4 \{\
.sp 3
.if \\n(;F<3 .in (\\n(.lu/2u)
\\*(}8
.if \w\\*(}9 \\*(}9 \}
.el \{\
.sp 2
.br
.tr aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
.ie \w\\*(}9 \\*(}8, \\*(}9
.el \\*(}8
.tr aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz\}
.in 0
.sp
\\$1\}
.el \{\
.if !\\n(:V .)D "SG:no authors"
.if \w\\$1 .as }v -\\$1
.if \\n(.$>1 \{\
.sp 3
\\*(}v
.sp -4 \}
.in (\\n(.lu/2u)
.>v
.in
.if \\n(.$=1 \{\
.sp -1
\\*(}v
'br \}
.rm >v
.fi \}
..
.de NS
.if \\n(!N=1 .di 
.if \\n(;M .br 
.)R 
.nr :D 1  
.ds }4 "Copy to
.nr ;0 0\\$1
.if \w\\$1u-\w'\0\0'u .nr ;0 50
.if \\n(;0 .ds }4 "Copy (with att.) to
.if \\n(;0-1 .ds }4 "Copy (without att.) to
.if \\n(;0-2 .ds }4 "Att.
.if \\n(;0-3 .ds }4 "Atts.
.if \\n(;0-4 .ds }4 "Enc.
.if \\n(;0-5 .ds }4 "Encs.
.if \\n(;0-6 .ds }4 "U.S.C.
.if \\n(;0-7 .ds }4 "Letter to
.if \\n(;0-8 .ds }4 "Memorandum to
.if \\n(;0-9 .ds }4 "Copy (with atts.) to
.if \\n(;0-10 .ds }4 "Copy (without atts.) to
.if \\n(;0-11 .ds }4 "Abstract only to
.if \\n(;0-12 .ds }4 "Complete memorandum to
.if \\n(;0-13 .ds }4 "Copy (\\$1) to
.if \\n(.$-1 .ds }4 \&\\$1
'in \\n(;N  
.if !\\n(!N .ds }5 \\*(}4  
.if \\n(!N  .da }C  
.if !\\n(!N  .di }C  
.if \\n(!N .if !\\n(;F .sp
\!.ds }4 \\*(}4
\\*(}4
.nf
.nr !N 1  
..
.de )N
.br
.rr !N
.di ]v
.}C
.br
.di
.rm ]v
.nr ;0 \\n(dn
.if \\n(;0 .)M
..
.de )M
.nf
.if !\\n(;F .sp
.ne 2v
.if \\n(.tu<=2v \{\
\&\\*(}5
.ie !\\n(;C See next page
.el See next column
'br \}
.nr !U \\n(;0>=\\n(.tu
.if \\n(!U \{\
.ie !\\n(;C .ds ]w Continued next page
.el .ds ]w Continued next column
.ds ]x \\\\*(}4\ \-\ contd.
.ch )f -(\\n(:ou+1v) \}
.}C
.if \\n(!U \{\
.rm ]w ]x
.ch )f -\\n(:ou \}
.rm }C
..
.de NE
.br
.if \\n(!N=1 .di
.nr :D 0
.nr !N 2
.if \\n(;M .)N  
.)R 
..
.de AV
.ne 6v
.in 0
.nf
.if \\n(.$<2 \{\
.sp
APPROVED:
'br \}
.sp 2
\l'3i'\h'.3i\l'1.5i'
\\$1\h'|4i-(\w'Da'u)'Date
.in
.fi
..
.de ND
.if !\\n(.$ .)D "ND:missing arg"
.ds DT "\\$1
..
.de AF
.ds }Z "\\$1
.if \w\\n(}Z .nr A 3 '
..
.de )h
'ev 0
'nh
'if \\n(Hy 'hy 14
'ev
'ev 2
.nr ;8 1
.)k
.rr ;8
.)R
.nr P +1
.if \\n(:Z \{.nr P \\n%
.rr :Z \}
.if \\n(:u*\\n(:S .nr P 1 
.if \\n(:u=1 \{.nr H1 +1 
.nr :u 2 \}
'sp \\n(!X
.TP
.br
.)R
'ev
.nr :I 2
.nr :J \\n(nl
'ns
'if \\n(:q .)l 
'nr :q 0
.mk ;r
.mk ;m
.nr !B 0
.if \\n(;d=0&\\n(:z>0 \{\
'ie \\n(Df>3  \{')z
')s \}
'el 'if \\n(Df>1 ')z \}
.nr :I 3
.nr !C \\n(.h
.PX 
'ns
.if !((\\n(!C=\\n(.h)&(\\n(!B=0)) .mk ;m
.nr ;T 0
.if \\n(;A>0 \{.nr ;h \\n(.i
.in 0
.>t
.nr ;T 1
.in \\n(;hu	\}
.mk #T
.nr :J \\n(nl
.if !\\*(]x \\*(]x
..
.de )f
.if !\\*(]w \\*(]w
.nr !D 0
.nr :N 0
'nr dn 0
'nr ;y \\n(.pu-\\n(nlu-\\n(:mu
'if \\n(:s \{'ie \\n(;y-4v .)o
'el .)m \}
'nr :s 0
'nr :o \\n(:mu
.ie \\n(;C=0 \{\
.if \\n(;e \&\c
'bp \}
.el .ie \\n(;C=2 .)2
.el .)1
.rr ;f
.ie \\*(]w 'ch )f -\\n(:ou
.el 'ch )f -(\\n(:ou+1v)
..
.de PH
.ds }t "\\$1
..
.de EH
.ds }e "\\$1
..
.de OH
.ds }o "\\$1
..
.de PF
.ds }b "\\$1
..
.de EF
.ds }f "\\$1
..
.de OF
.ds }p "\\$1
..
.de TP
'sp
.)K
.af ;P \\gP
.af P 1
.nr ;P \\nP
.af P \\g(;P
.af ;P 1
.ie \\n(Pv \{\
.ie (\\n(Pv=1)&(\\n(;P>1) 'sp 2
.el \{\
.ce
PRIVATE\h'-\w'PRIVATE'u'\l'\w'PRIVATE'u'
.sp \} \}
.el 'sp 2
.if !\\n(;P-1 .if \\nN 'sp
.if !\\n(;P-1 .if \\n(:S .tl \\*(}t
.if !\\n(;P-1 .if !\\nN .tl \\*(}t
.if \\n(;P-1 .ie \w'\\*(]n' .tl '\\*(]n - \\nP'''
.el .tl \\*(}t
'if !\\n(;P%2 'tl \\*(}e
'if \\n(;P%2 'tl \\*(}o
'sp 2
..
.de PM
.ie \\$1 .		nr ;t 0
.el .ie \\$1PM6 .	nr ;t 6
.el .ie \\$1ILL .	nr ;t 5
.el .ie \\$1PM5 .	nr ;t 5
.el .ie \\$1RS .	nr ;t 4
.el .ie \\$1PM4 .	nr ;t 4
.el .ie \\$1CP .	nr ;t 3
.el .ie \\$1PM3 .	nr ;t 3
.el .ie \\$1RG .	nr ;t 2
.el .ie \\$1PM2 .	nr ;t 2
.el .nr ;t 1
.ie \\n(;t=0 \{\
.(B
.(E 2 0
.(B
.(E 3 0 \}
.el .ie \\n(;t=6 \{\
.(B
\!.	tl \\*(]m
\!.	tl \\*(]o
\!.     tl \\*(]p
\!.     tl \\*(]q
.(E 2 4v \}
.el .ie \\n(;t=5 \{\
.(B
\!.	tl \\*(]i
\!.	tl \\*(]j
\!.	tl \\*(]k
\!.	tl \\*(]l
.(E 3 4v \}
.el .ie \\n(;t=4 \{\
.(B
\!.	tl \\*(]U
\!.	tl \\*(]V
\!.	tl \\*(]W
\!.	tl \\*(]X
.(E 3 4v \}
.el .ie \\n(;t=3 \{\
.(B
\!.	tl \\*(]I
\!.	tl \\*(]J
\!.	tl \\*(]K
\!.	tl \\*(]L
.(E 3 4v \}
.el .ie \\n(;t=2 \{\
.(B
\!.	tl \\*(]A
\!.	tl \\*(]F
\!.	tl \\*(]G
\!.	tl \\*(]H
.(E 3 4v \}
.el \{\
.(B
\!.	tl \\*(]M
\!.	tl \\*(]O
\!.	tl \\*(]Q
\!.	tl \\*(]R
.(E 3 4v \}
..
.de )b
'ev 2
.nf
.?1
.?2
.?3
.?4
.?5
.br
.)R
.af ;P \\gP
.af P 1
.nr ;P \\nP
.af P \\g(;P
.af ;P 1
.ie !\\n(;P%2 .tl \\*(}f
.el .tl \\*(}p
.ie \\n(;P=1 \{\
.ie \\nN=1 .tl \\*(}t
.el .tl \\*(}b \}
.el .tl \\*(}b
.if \\nC .tl \\*(]C
.)R
'ev
..
.de )2
.po \\nOu 
.nr ;C 1 
'bp
..
.de )1
.rt \\n(;mu
.po +\\n(;ou 
.nr ;C 2 
.nr :I 2
.nr :J \\n(nl
'ns
'if \\n(:q .)l 
'nr :q 0
'if \\n(;d=0&\\n(:z>0 \{\
'ie \\n(Df>3 \{')z
')s  \}
'el 'if \\n(Df>1	')z  \}
.nr :I 3
.nr ;T 0
.if \\n(;A>0 \{.nr ;h \\n(.i
.in 0
.>t
.nr ;T 1
.in \\n(;hu	\}
.mk #T
.nr :J \\n(nl
.if \\n(;C&\\n(;a=1&\\n(!K=1 'wh \\n(!Eu+1v )a 
..
.de 2C 
.if \\n(;C=0 \{\
.br
.)R
.nr ;C 1
.if !\\n(.$ .nr ;l \\n(.lu*8u/17u 
.if !\\n(.$ .nr ;o \\n(.lu*9u/17u 
.if \\n(.$ .nr ;l \\$1u*1.3n
.if \\n(.$ .nr ;o \\nWu-\\n(;lu
.ev 1
.ll \\n(;lu
.lt \\n(;lu
.ev
.ll \\n(;lu
.lt \\n(;lu
.nr :L \\nW
.nr W \\n(.lu
.SP
.ns
.mk ;m \}
..
.de 1C
.if \\n(;C \{\
.br
.if \\n(;C>1 .sp |\\n(.hu
.po \\nOu
.rr ;C
.)R
.nr W \\n(:Lu
.rr :L
.ev 1
.ll \\nWu
.lt \\nWu
.ev
.ll \\nWu
.lt \\nWu
.SP .5
.ns \}
..
.de )a
'sp \\n(:0u
'sp 1
.ch )a
.nr !E 0
.rr !E !K
..
.de WC
.if \\n(.$ \{\
.ie \\$1N \{.nr ;a 0
.nr ;b 0
.nr ;j 0
.nr ;p 1 \}
.el .ie \\$1WD .nr ;a 1
.el .ie \\$1WF .nr ;b 1
.el .ie \\$1FF .nr ;j 1
.el .ie \\$1FB .nr ;p 1
.el .ie \\$1-WD .nr ;a 0
.el .ie \\$1-WF .nr ;b 0
.el .ie \\$1-FF .nr ;j 0
.el .ie \\$1-FB .nr ;p 0
.el ')D "WC: unknown option"
.if \\n(.$ .WC \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9
'br \}
..
.de >W
.if \\n(;C \{\
.ev 1
.ll \\n(:Lu
.lt \\n(:Lu
.ev
.nr W \\n(:Lu
.nr ;W 1 \}
..
.de >N
.if (\\n(;l>0)&(\\n(;C=0) \{\
.ev 1
.ll \\n(;lu
.lt \\n(;lu
.ev
.nr W \\n(;lu
.nr ;W 2 \}
..
.de >R
.ie \\n(;W=1 .nr W \\n(;lu
.el .if \\n(;W=2 .nr W \\n(:Lu
.if \\n(;W \{\
.ev 1
.ll \\nWu
.lt \\nWu
.ev
.nr ;W 0 \}
..
.de )Q
.ch )Q 200v
.rs
'sp 70
..
.de BS
.(B
..
.de BE
.(E 4
..
.de VM
.ie 0\\$1>=0 .nr !X 0\\$1
.el .nr !X 0
.if 0\\$2>=0 \{\
.(B
.rs
.sp 0\\$2v
.(E 5 0\\$2 \}
..
.de (B
.ev 1
.)R
.di >K
..
.de (E
.br
.di
.)R
.ev
.ie (\\n(dn=0)&(0\\$2=0) \{\
.nr ?\\$1 0
.rm >K ?\\$1
'br \}
.el \{\
.ie 0\\$2>0 .nr ?\\$1 0\\$2
.el .nr ?\\$1 \\n(dn \}
.nr ?0 \\n(:Uu
.nr :U \\n(?1+\\n(?2+\\n(?3+\\n(?4+\\n(?5+1v
.if (\\n(:Uu+\\n(:Mu)>(\\n(.pu-\\n(nlu-.5v) .SK
.rn >K ?\\$1
.nr :o +(\\n(:Uu-\\n(?0u)
.ch )n -\\n(:ou
.ch )f -\\n(:ou
.nr :m \\n(:Mu+\\n(:Uu
.ch )b -(\\n(:mu-2v)
..
.de FS
'nr :s +1 
.if \\n(:F .)D "FS:missing FE"
.if \\n(:F .FE
.if \\n(:y .)D "FS:missing DE"
.if \\n(:y .DE
.nr :F 1
.if !\\n(!F \{\
.ie \\n(;C .nr !F 2
.el .nr !F 1  \}
.ie (\\n(;C>0)&((\\n(;b=1):((\\n(;j=1)&(\\n(!F=1))) \{\
.nr !F 1
.>W  \}
.el .if ((\\n(;C=0)&(\\n(;j=1)&(\\n(!F=2))  .>N   
'ev 1
'di >b
.nr :D 1
.)R
'nh
'if \\n(:i 'hy 14
'ad
'if \\n(:j 'na
'ps -2
'vs \\n(.sp+1p
'sp \\n(Fsu*3p
'if \\n(.$ 'ds }y \\$1\ 
'if !\\n(.$ 'ds }y \\*(]y.\ 
'if \\n(:k \\*(}y\&\c
'if !\\n(:k 'nr ;v \w\0\0.\ 
'if !\\n(:k 'nr ;u \w\\*(}y
'if !\\n(:k 'in +\\n(;vu
'if !\\n(:k 'if !\\n(:l 'ti -\\n(;vu
'if !\\n(:k 'if !\\n(:l 'if !\\n(;u-\\n(;v \\*(}y\h\\n(;vu-\\n(;uu\&\c
'if !\\n(:k 'if !\\n(:l 'if \\n(;u-\\n(;v \\*(}y\&\c
'if !\\n(:k 'if \\n(:l 'if \\n(;v-\\n(;u 'ti -\\n(;uu
'if !\\n(:k 'if \\n(:l 'if !\\n(;v-\\n(;u 'ti -\\n(;vu
'if !\\n(:k 'if \\n(:l \\*(}y\&\c
..
.de FE
.if !\\n(:F .)D "FE:no FS active"
.br
'di
.nr :D 0
.if \\n(;c .nr :D \\n(;c
'in 0
'nf
'na
.if !\\n% \{\
'da >c
.>b
\!.	br
'di
.if !(\\n(:D=3) \{\
.nr :G 1
.da >d
.>b
\!.		br
.di
'br \}
'br \}
.if !((\\n%=0)*(\\n(:D=3)*(\\n(:t=1):(\\n(;X)) \{\
'da >y
.>b
\!.	br
'di
'br \}
'rm >b
.)R
'ev
.nr :F 0
.>R
.if !((\\n%=0)*(\\n(:D=3)*(\\n(:t=1):(\\n(;X)) \{\
.if !((\\n(!A=1):((\\n(;C=2)&(\\n(!F=1))) \{\
'if !\\n(:s-1 'nr dn +4v+.5p
'nr :o +\\n(dnu
.nr dn 0
'if !\\n(.pu-\\n(nlu-.5p-\\n(:ou 'nr :o \\n(.pu-\\n(nlu-.5p
'if !\\n(:ou-\\n(:mu 'nr :o \\n(:mu
'ch )f -\\n(:ou 
'br \}\}
..
.de )o
.ie (\\n(!F=1)&(\\n(;C=1) \{\
.nr !A 1 \}
.el .nr !A 0
'ev 1
.)R
'ps -2
'vs \\n(.sp+1p
'nf
'nr ;5 \\n(.pu-\\n(:ou+.5p
.if !\\n(!H 'if \\n(;5u>\\n(nlu 'sp |\\n(;5u+.5p
'nr ;5 \\n(.pu-\\n(nlu-1v-\\n(:mu
.ie \\n(;5u>0 \{\
'sp
.ti 0
.ie \\n(:n=0 \{.ie \n(.A=0 \l'72p'
.el __________ \}
.el \{.ie \n(.A=0 \l\\n(.lu
.el _____________________________ \}
'nr :n 0
.br
.if \\n(!A .wh (\\n(nlu-2v) )Q
'br \}
.el 'sp 15i
.rr ;5
'nr ;Z 1
'nr dn 0
'ps
'vs \\n(.sp+2p
.>y
.br
'di
.if \\n(dn=1v .nr dn 0
.nr :n \\n(dn
'nr ;Z 0
.if !\\n(;C=1 \{\
.rr !A
.if \\n(dn=0 .rr !F \}  
'rm >y
'nr :q \\n(dnu
'nr dn 0
'nr :s 0 
.)R
'ev
..
.de )n
'if \\n(;Z \{
'di >x
'sp \\n(Fs  \}
..
.de )m
'ev 1
.)R
'ps -2
'vs \\n(.sp+1p
.nf
'di >w
.>y
.br
'di
'rm >y
'nr :q \\n(dn
'nr dn 0
'nr :s 0
.if !\\(;C=1 .rr !A
.)R
'ps
'vs \\n(.sp+2p
'ev
..
.de )l
'nr :s 1
'di
'ev 1
'di >b
.)R
'ps -2
'vs \\n(.sp+1p
'nh
'nf
.>x
.>w
.nr :F 1
.FE
'rm >x
'rm >w
..
.de FD
'nr :i 0 
'nr :j 0 
'nr :k 0 
'nr :l 0 
'nr ;z 0
'if \\n(.$ 'nr ;z \\$1
'if \\n(;z-11 'nr ;z 0
'if \\n(;z-7 'nr :l 1
'if \\n(;z-7 'nr ;z -8
'if \\n(;z-3 'nr :k 1
'if \\n(;z-3 'nr ;z -4
'if \\n(;z-1 'nr :j 1
'if \\n(;z-1 'nr ;z -2
'if \\n(;z 'nr :i 1
'if \\n(.$-1 .nr :C 1
..
.de DS
.nr :t 0
.nr !K 1
.)J "\\$1" "\\$2" "\\$3"
..
.de DF
.nr :t 1
.nr !K 0
.)J "\\$1" "\\$2" "\\$3"
..
.de )J
.nr ;i \\n(.i
.nr ;q \\n(.u
'di
.if \\n(:D>1 \{.ie \\n(:t=0  .)D "DS:illegal inside TL or AS"
.el .)D "DF:illegal inside TL or AS" \}
.if \\n(:F \{.ie \\n(:t=0 .)D "DS:missing FE"
.el .)D "DF:missing FE"
.FE \}
.if \\n(:y \{.ie \\n(:t=0 .)D "DS:missing DE"
.el .)D "DF:missing DE"
.DE \}
.nr :y 1
.if (\\n(;C>0)&(\\n(;a=1) .>W
.if (\\n(;C=2&\\n(;a=1)&\\n(!K 'bp
.ev 1
.)R
'di >0
.nr :D 1
.nr ;z 0+0\\$1
.if \\$1L .nr ;z 0
.if \\$1I .nr ;z 1
.if \\$1C .nr ;z 2
.if \\$1CB .nr ;z 3
.if \\n(;z>3 .nr ;z 3
.nr :B \\n(;z
.if \\n(:t=0 .if \\n(;z<2 .ll -\\n(;iu
.if \\n(;z=1 .in +\\n(Sin
.if \\n(;z=2 \{.ce 9999
.nr :t +2 \}
.if \\n(:B=3 \{.nr :Y 1
.nr :t +2
.nr :X \\n(.i
.di >X \}
.nr ;z 0+0\\$2
.if \\$2N .nr ;z 0
.if \\$2F .nr ;z 1
.nf
.if \\n(;z .fi
.ll -0\\$3
..
.de )z
.nr ;w \\n(:x+1%26+1
.if !((\\n(;C=2)&(\\n(!\\n(;w=1)) \{\
.nr ;d 1
.ev 1
.SP .5
.)R
'nf
'rs
.nr :x \\n(:x+1%26
.?\\n(;w
.if \\n(!\\n(;w=1 .nr !B 1
.rm ?\\n(;w
.rr ?\\n(;w !\\n(;w
.)R
.if \\n(De \{\
.if \\n(;e \&\c
.bp
.nr !B 0 \}
.ie \\n(:I>1 \{\
.if \\n(nl>\\n(:J .nr :I 0 \}
.el .nr :I 0
.SP .5
.nr :J \\n(nl
.ev
'nr :z -1
.nr ;d 0
.ne 2 \}
..
.de )y
'if \\n(:z \{\
'nr ;w \\n(:x+1%26+1
'nr ;z \\n(?\\n(;w
.ie (\\nC=4):(\\nC=5) .nr ;Q 2
.el .nr ;Q 1
.if (\\n(:I=2):(\\n(;z+\\n(;pv+\\n(;Qv<\\n(.t):\
((\\n(;z>(\\n(.p-\\n(;r-\\n(:m))&(\\n(nl<(\\n(.p-\\n(;r-\\n(:o/2u+\\n(;r))) \{\
'ie \\n(:I<2  .if \\n(;p .br
'el .if \\n(:Ju<\\n(nlu  .if \\n(;p .br
')z  \}\}
..
.de )x
'nr :v \\n(:z
')y
'if \\n(:v=\\n(:z \{\
'nr ;d 1
\&\c
'SP \\n(.tu+1v
'nr ;d 0	
')z  \}
..
.de )w
'if \\n(:z \{\
')x
')w \}
..
.de )u
'if \\n+(:z>25 ')D "DF: too many displays"
'nr :w \\n(:w+1%26
'nr ;w \\n(:w+1
'rn >0 ?\\n(;w
.nr !\\n(;w 1
.if (\\n(;C>0)&(\\n(;a=0) .nr !\\n(;w 2
.nr ?\\n(;w \\n(:0
'if !((\\n(;C>0)&(\\n(!\\n(;w=1)) 'if (\\n(:z=1)&((\\n(Df%2=1):(\\n(Df>5)) ')y
..
.de )s
'nr :v \\n(:z
'nr ;Y \\n(:I
'nr :I 3
')y
'ie \\n(:v>\\n(:z  ')s
'el 'nr :I \\n(;Y
..
.de )t
.br
.nr !L \\n(.L
.ls 1
.)r
.ti \\n(.iu
.nf
.if \\n(:t>1 .in -\\n(;iu  
.rs
.nr ;d 1
.>0
.)R
.nr ;d 0
.ie \\n(:I>1 \{\
.if \\n(nl>\\n(:J .nr :I 0 \}  
.el .nr :I 0
.ls \\n(!L
.in \\n(;iu
.if !\\n(;q .nf
.if \\n(Ds .SP .5
.nr :J \\n(nl
..
.de )r
.if \\n(Ds  .SP .5
.if (\\n(:0>=\\n(.t)&((\\n(:0<(\\n(.p-\\n(;r-\\n(:m)):\
(\\n(nl>(\\n(.p-\\n(;r-\\n(:o/2u+\\n(;r))) \{\
.if \\n(;e \&\c
.ne \\n(.tu+1v
.if \\n(:I<2 .)r \}  
..
.de DE
.if !\\n(:y .)D "DE:no DS or DF active"
.nr !E \\n(nl
.if \\n(:B=3 \{.br
.di
.if \\n(dl>\\n(:Y .nr :Y \\n(dl
.if \\n(:Y<\\n(.l .in (\\n(.lu-\\n(:Yu)/2u 
.nf
.>X
.fi
.rm >X
.in \\n(:Xu
.rr :X \}
.ce 0
.br
'di
.rr :D ;D ;E :B
.)R
.ll \\nWu
.ev
'nr :0 \\n(dn
'nr dn 0
.nr ;x \\n(:t
.if \\n(:t-1 .nr ;x -2
.>R
.if !\\n(;x .)t
.if \\n(;x .)u
.nr :y 0
.nr :Y 0
.nr ;L 1
..
.de )R
'fi
'na
.if \\n(:h 'ad
'nh
'if \\n(Hy 'hy 14
'in 0
'ti 0
'ps \\n(:Pp
'vs \\n(!Pp
..
.de RS
.if \\n(;R=2 .)D "RS:missing RF"
.nr ;R 2 
.nr Rf +1 
.if \\n(.$ .ds \\$1 \v'-.4m'\s-3[\\n(:R]\s0\v'.4m'
.ie \\n(;C .ev 1
.el .ev 2
.)R
'in \w\0\0.\ u
'ti -\w\\*(]r.\ u
.nr :D 1
.da >r
\!.ne 2
\\*(]r.\ \&\c
..
.de RF
.if !(\\n(;R=2) .)D "RF: no RS active"
.nr ;R 1
.br
\!.if \\\\n(Ls .sp .5
.di
'in
.nr :D 0
.ev
..
.de RP
.if \\n(;R=2 .)D "RP: missing RF"
.if \\n(;R \{\
.nr ;R 0 
.if !(0\\$1) .nr :R 0 1 
.)R
.ie (0\\$2=2):(0\\$2=3) \{\
.if \\n(;e \&\c
'ne 8
.sp 1 \}
.el \{\
.ie \\n(;e .SK
.el \{\
\&\c
.bp
'br \} \}
.ce 1
.ul
\\*(Rp
.if \w\\*(Rp \{
.am >C
.)T 1 0 "" "\\*(Rp" \\nP 
\\..
'br \}
.nf
.>r
.br
.rm >r
.)R
.if (0\\$2=0):(0\\$2=2) .SK
'br \}
..
.de )q
.br
.nr ;e 1
.LC 0
.if \\n(:F .FE
.if \\n(:y .DE 
.if \\n(!N=1 .NE 
.)N
.nr ;x 0 
.if \\n(;R .RP 0 1
\&\c
.if (\\n(;C>0)&(\\n(:z>0) 'bp
.)w 
\&
'nr :0 \\n(.pu-\\n(nlu-\\n(:ou
'if \\n(:s 'if (\\n(:0<=0):((\\n(;C=2)&(\\n(!F=1)) 'nr ;x 1
'if \\n(:q 'nr ;x 1
'if \\n(;x \&\c
'if \\n(;x 'bp
.di ]B
.>y
.di
.nr !H \\n(dn
.if \\n(!H\{\
.nr !J \\n(.pu-\\n(dnu-\\n(:mu-4v
.ie \\n(!J>\\n(nlu .ch )f \\n(!Ju
.el 'bp \}
.wh -.5p )k
.nr ;e 0
..
.de WA
.nr :D 2
.rm 2C AF AS AE AT AU AV CS OK TC TL TM MT
.nr ;F 5
.)W WA
.ds }8 \\$1
.ds }9 \\$2
.di ]s
.nf
..
.de WE
.)W WE
.br
.di
.nr !R \\n(dn
..
.de IA
.nr :D 1
.)W IA
.ds }6 \\$1
.ds }7 \\$2
.di ]u
.nf
..
.de IE
.)W IE
.br
.di
..
.de LO
.rm 2C AF AS AE AT AU AV CS OK TC TL TM MT
.ie \\$1 .)D "Required argument missing"
.el .ie \\$1SA \{\
.nr !V 1
.ie \w\\$2 .ds }a \\$2
.el .ds }a To Whom It May Concern:\}
.el .ie \\$1AT \{\
.ds }j ATTENTION:  \\$2
.nr !Y 1 \}
.el .ie \\$1RN \{\
.ds }k In reference to:  \\$2
.nr !6 1 \}
.el .ie \\$1CN \{\
.nr !9 1
.ie \w\\$2 .ds }l \\$2
.el .ds }l CONFIDENTIAL \}
.el .ie \\$1SJ \{\
.ds }m \\$2
.nr !M 1 \}
.el .)D "LO argument not recognized" 
..
.de LT
.nr :D 0
.)W LT
.rn TP >Y 
.br
.rn >Y TP
.ie \\$1 .(1
.el .	ie \\$1BL .	(1
.el .ie \\$1SB .	(2
.el .ie \\$1FB .	(3
.el .ie \\$1SP .	(4
.el .)D "LT argument not recognized."
.nr ;M 1
..
.de (1
.nr ;F 1
.rm (2 (3 (4
.nf
.in (\\n(.lu/2u)
.rs
.sp 11
.ie \\n(!R .]s
.el .sp 3
\\*(DT
.if \\n(!9 \{\
.sp
.in 0
\\*(}l \}
.if \\n(!6 \{\
.sp
.in (\\n(.lu/2u)
\\*(}k \}
.ie (\\n(!9:\\n(!6) .sp 2  
.el .sp 4
.in 0
.if \w\\*(}6 \\*(}6
.if \w\\*(}7 \\*(}7
.]u
.if \\n(!Y \{\
.sp
\\*(}j \}
.if \\n(!V \{\
.sp
\\*(}a \}
.if \\n(!M \{\
.sp
SUBJECT:  \\*(}m \}
.rm WA WE IA IE LO
.fi
..
.de (2
.nr ;F 2
.rm (1 (3 (4
.rs
.sp 11
.nf
.in (\\n(.lu/2u)
.ie \\n(!R .]s
.el .sp 3
\\*(DT
.if \\n(!9 \{\
.in 0
.sp
\\*(}l \}
.if \\n(!6 \{\
.sp
.in (\\n(.lu/2u)
\\*(}k \}
.ie (\\n(!9:\\n(!6) .sp 2
.el .sp 4
.in 0
.if \w\\*(}6 \\*(}6
.if \w\\*(}7 \\*(}7
.]u
.if \\n(!Y \{\
.sp
\\*(}j \}
.if \\n(!V \{\
.sp
\\*(}a \}
.if \\n(!M \{\
.sp
.ti 5
SUBJECT:  \\*(}m \}
.rm WA WE IA IE LO
.nr Pt 1
.fi
..
.de (3
.nr ;F 3
.rm (2 (1 (4
.rs
.sp 11
.nf
.ie \\n(!R .]s
.el .sp 3
\\*(DT
.if \\n(!9 \{\
.sp
\\*(}l \}
.if \\n(!6 \{\
.sp
\\*(}k \}
.ie (\\n!9:\\n!6) .sp 2
.el .sp 4
.if \w\\*(}6 \\*(}6
.if \w\\*(}7 \\*(}7
.]u
.if \\n(!Y \{\
.sp
\\*(}j \}
.if \\n(!V \{\
.sp
\\*(}a \}
.if \\n(!M \{\
.sp
SUBJECT:  \\*(}m \}
.rm WA WE IA IE LO
.fi
..
.de (4
.nr ;F 4
.rm (2 (3 (1
.rs
.sp 11
.br
.nf
.ie \\n(!R .]s
.el .sp 3
\\*(DT
.if \\n(!9 \{\
.sp
\\*(}l \}
.if \\n(!6 \{\
.sp
\\*(}k \}
.ie (\\n!9:\\n!6) .sp 2
.el .sp 4
.if \w\\*(}6 \\*(}6
.if \w\\*(}7 \\*(}7
.]u
.if \\n(!Y \{\
.sp
\\*(}j\}
.if \\n(!M \{\
.sp 2
.br
.tr aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
\\*(}m
.br
.tr aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz
.sp \}
.rm WA WE IA IE LO
.fi
..
.de )W
.ie \\$1WA .nr !8 1
.el .ie \\$1WE \{\
.ie \\n(!8=1 .nr !8 2
.el .)D "WA macro missing"\}
.el .ie \\$1IA \{\
.ie \\n(!8=2 .nr !8 3
.el .)D "WA or WE macro missing"\}
.el .ie \\$1IE \{\
.ie \\n(!8=3 .nr !8 4
.el .)D "WA, WE, or IA macro missing"\}
.el .if \\$1LT \{\
.ie \\n(!8=4 .nr !8 0
.el .)D "WA, WE, or IE macro missing"\}
..
.de )k
.if "\\*(.T"aps"\{\
.	po 0
.	lt 7.5i
.	ps 10
.	vs 10p
.	ft 1
.	tl '--''--'
.	ft
.	vs
.	po
.	ps
.	lt \}
..
.nr :r .6i 
.nr :m .8i 
'nr :i 0 
'nr :j 0 
'nr :k 0 
'nr :l 0 
.nr :n 0 
.nr :p 0 1 
.nr :o 0 
.nr :z 0 1 
.nr :y 0 
.nr :x 0
.af ;w a
.nr :w 0
.nr :F 0
.nr :R 0 1 
.ds ]r \\n(:R
.ds ]y \\n(:p
'wh 0 )h
.nr :o \n(:mu 
'wh -\n(:mu )f
'ch )f 15i
'wh -\n(:mu )n 
'ch )f -\n(:mu
'wh -\n(:ru )b
.nr :M \n(:mu
.if \*(]ZMM DEFINED \{\
.tm ERROR: MM package read twice
.ab 	\}
.ds ]Z MM DEFINED
.if !\w'\gE' .nr E 1
.if !\nL .nr L 11i
.pl \nLu
.if !\w'\gO' .nr O 1.3i
.po \nOu
.if \nP .nr P -1
.nr P \nP 1
.if !\nS .nr S 10
.if !\nW .nr W 6i
.if \n(mo-0 .ds DT January
.if \n(mo-1 .ds DT February
.if \n(mo-2 .ds DT March
.if \n(mo-3 .ds DT April
.if \n(mo-4 .ds DT May
.if \n(mo-5 .ds DT June
.if \n(mo-6 .ds DT July
.if \n(mo-7 .ds DT August
.if \n(mo-8 .ds DT September
.if \n(mo-9 .ds DT October
.if \n(mo-10 .ds DT November
.if \n(mo-11 .ds DT December
.as DT " \n(dy, 20\n(yr
.S D D
'ev 0
.)R
.ll \nWu
.lt \nWu
'ev
'ev 1
.)R
.ll \nWu
.lt \nWu
'ev
'ev 2
.)R
.ll \nWu
.lt \nWu
'ev
.PH "''- \\\\nP -''
.if \nC=3 \{.ds ]C D\ R\ A\ F\ T
.PF "''\\\\*(DT'' \}
.if \nC=4 \{.ds ]C D\ R\ A\ F\ T
.PF "''\\\\*(DT''
.ls 2
.nr Pt 1
.nr Pi 10 \}
.if \nC=5 .ls 2 
.if \nC=2 .ds ]C ''DATE FILE COPY''
.if \nC=1 .ds ]C ''OFFICIAL FILE COPY''
.if (\nN=3):(\nN=5) \{.nr :S 1
.PF "''\\\\n(H1-\\\\nP''"
.PH \}
.if \nN=4 \{.PH
.nr N 0 \}
.if \nD .PH "'\\*(RE line # \\\\n(.c'- \\\\nP -''
.if \nA=1 .AF
'em )q
.ds ` \\k:\h-\\n(.wu*8u/10u\h\\n(.fu/2u*2u+1u-\\n(.fu*.2m\(ga\h|\\n:u
.ds ' \\k:\h-\\n(.wu*8u/10u\h\\n(.fu/2u*2u+1u-\\n(.fu*.2m+.07m\(aa\h|\\n:u
.ds ^ \\k:\h-\\n(.wu*8u/10u\h\\n(.fu/2u*2u+1u-\\n(.fu*.15m-.07m\
\h\\n(.fu-1u/2u*.02m^\h|\\n:u
.ds ~ \\k:\h-\\n(.wu*8u/10u\h\\n(.fu/2u*2u+1u-\\n(.fu*.2m-.07m\
\h\\n(.fu-1u/2u*.05m~\h|\\n:u
.ds , \\k:\h-\\n(.wu*85u/100u\v.07m,\v-.07m\h|\\n:u
.ds : \\k:\h-\\n(.wu*85u/100u\h\\n(.fu/2u*2u+1u-\\n(.fu*3u*.06m\
\h3u-\\n(.fu/2u*.05m-.1m\
\v-.6m\z.\h\\n(.fu-1u/2u*.05m+.2m.\v.6m\h|\\n:u
.ds ; \\k:\h-\\n(.wu*75u/100u\h\\n(.fu/2u*2u+1u-\\n(.fu*3u*.09m\
\h3u-\\n(.fu/2u*.06m-.15m\h\\n(.fu-1u/2u*.04m\
\v-.85m\z.\h.3m.\v.85m\h|\\n:u
.if !\*(.Taps .rm )k
