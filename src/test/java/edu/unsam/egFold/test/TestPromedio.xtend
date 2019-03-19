package edu.unsam.egFold.test

import edu.unsam.egFold.Alumno
import edu.unsam.egFold.Materia
import org.junit.Assert
import org.junit.Before
import org.junit.Test

class TestPromedio {
	
	Materia materia
	Alumno goku
	Alumno vegeta
	
	@Before
	def void init() {
		materia = new Materia()
		
		goku = new Alumno() => [
			nombreApellido = "Son Goku"
			notaFinal = 8.0
		]
		
		vegeta = new Alumno() => [
			nombreApellido = "Vegeta"
			notaFinal = 7.5
		]
		
		materia.alumnos = #[goku, vegeta]
	}
	
	@Test
	def void testPromedio() {
		Assert.assertEquals(7.75, materia.promedioGeneral, 0.001)
	}
}