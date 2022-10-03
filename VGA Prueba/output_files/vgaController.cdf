/* Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(5CSEMA5F31) MfrSpec(OpMask(0) FullPath("D:/Proyectos/Taller/VGA Prueba/output_files/vgaController.sof"));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("D:/Proyectos/Taller/VGA Prueba/output_files/") File("vgaController.sof") MfrSpec(OpMask(1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
