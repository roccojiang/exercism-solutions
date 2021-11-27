object SpaceAge {
  private val SECS_IN_EARTH_YEAR = 31557600

  private val orbitalPeriods = Map(
    "Mercury" -> 0.2408467,
    "Venus" -> 0.61519726,
    "Earth" -> 1.0,
    "Mars" -> 1.8808158,
    "Jupiter" -> 11.862615,
    "Saturn" -> 29.447498,
    "Uranus" -> 84.016846,
    "Neptune" -> 164.79132
  )

  private def ageOn(planet: String)(implicit age: Double): Double =
    age / SECS_IN_EARTH_YEAR / orbitalPeriods(planet)

  def onMercury(implicit age: Double): Double = ageOn("Mercury")
  def onVenus(implicit age: Double): Double = ageOn("Venus")
  def onEarth(implicit age: Double): Double = ageOn("Earth")
  def onMars(implicit age: Double): Double = ageOn("Mars")
  def onJupiter(implicit age: Double): Double = ageOn("Jupiter")
  def onSaturn(implicit age: Double): Double = ageOn("Saturn")
  def onUranus(implicit age: Double): Double = ageOn("Uranus")
  def onNeptune(implicit age: Double): Double = ageOn("Neptune")
}
