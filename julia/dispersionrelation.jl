using CairoMakie

fig=Figure()

ax=Axis(fig[1, 1], limits=(-pi, pi, 0, 2.5) , xticks = [-3,-2,-1,0,1,2,3], 
xlabel= L"Wavenumber(k)", ylabel= L"frequency (\omega)", title= L"Dispersion", aspect=DataAspect())

dt = -pi:0.1:pi
f(x)=sqrt(2-2cos(x))

scatterlines!(ax, dt, f, label = "m=1", color= "blue")

axislegend(ax, framevisible = false, position=:rt)
text!(L"\omega(k) = \sqrt(2-2cos(k))", position=(-1, 3.5))

save("dispersionrelation.svg",fig)

fig
