include("somefunctions.jl")

function perimetr!(robot)
      start_pos_define(r)
      putmarker!(robot)
      for side in (Nord, Ost, Sud, West)
          while !isborder(robot, side)
              move!(robot, side)
          end
          putmarker!(robot)
      end
      goto_start_pos(r)
  end