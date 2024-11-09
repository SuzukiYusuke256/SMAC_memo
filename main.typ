#set text(font: "Segoe UI") // 全体フォント指定（Segoe UI）
#show regex("[\p{scx:Han}\p{scx:Hira}\p{scx:Kana}]"): set text(font: "Yu Gothic") // 漢字かなカナのみ指定（游ゴシック）

// Main content
= SMAC法入門

非圧縮性流体の支配方程式である連続の式とNavier-Stokes方程式は以下のように表される．

$ nabla dot bold(u) = 0 $
$ (partial bold(u))/(partial t) + bold(u) dot nabla bold(u) = -1/rho nabla p + nu nabla^2 bold(u)  $

簡単のため，2次元の場合を考える．

$ (partial u)/(partial x) + (partial v)/(partial y)= 0 $
$ (partial u)/(partial t) + u (partial u)/(partial x) + v (partial u)/(partial y) = 
-1/rho (partial p)/(partial x)  + nu (partial^2 u)/(partial x^2)   $
$ (partial v)/(partial t) + u (partial v)/(partial x) + v (partial v)/(partial y) = 
-1/rho (partial p)/(partial y)  + nu (partial^2 v)/(partial y^2)   $

1階の微分方程式は，一般に以下のように表される．

$ (partial  y)/(partial t) =  f(t,y) $

Crank-Nicolson法では，

となる．この方程式を直接コンピュータで解くことはできないので，差分法を用いて代数方程式に変形する．
時間微分にはCrank-Nicolson法を用いる．これは，時間方向の中心差分であり，以下のように表される．

$ (partial  u)/(partial t) = (u_(i,j)^(n+1) - u_(i,j)^n) / (Delta x) = (f_(i,j)^(n+1) + f_(i,j)^n)/2 $

$ (partial  u)/(partial t) =  $

$d / (d x) (1/x) = log abs(x)$ 

Gauss integral can be expressed as follows:

ガウス積分は以下のように表される．ここで，被積分関数は偶関数であるから，

$ integral_(-infinity)^infinity exp(-a x^2) d x = sqrt(pi/a) $
$ sum_(k=0)^n k = 1/2 n(n+1) $