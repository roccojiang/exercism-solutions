object Leap {
  def leapYear(year: Int): Boolean = {
      def divides(x: Int, y: Int): Boolean = x % y == 0

    divides(year, 4) && (!divides(year, 100) || divides(year, 400))
  }
}
