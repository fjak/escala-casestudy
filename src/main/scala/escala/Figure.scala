package escala

class Figure {
  lazy val moved = moveBy.after

  def _moveBy(d: (Int, Int)) = {
    // moving...
  }

  lazy val moveBy = new scala.events.Observable( _moveBy )

  def afterMoved(d: (Int, Int), u: Unit) = println("Moved")

  moved += afterMoved _
}
