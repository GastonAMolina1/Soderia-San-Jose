package Dominio;

import static org.junit.Assume.Assert.*;


import org.junit.jupiter.api.Test;

class PersonaTest {

	@Test
	void testPersona() {
		Persona p = new Persona();
		Persona p1 = new Persona();
		assertEquals(p, p1);
	}

}
