package org.svenehrke.demo.bdscomponentsdemo.components.heading2;

public record Heading2Props(Integer level) {

	public String classesp() {
		return classes(level);
	}
	public static String classes(Integer level) {
		String size = switch (level) {
			case 2 -> "xx-large";
			case 3 -> "x-large";
			case 4 -> "large";
			case 5 -> "normal";
			default -> "xxx-large";
		};
		return "bal-heading bal-heading--level-hLEVEL bal-heading__text bal-heading__text--color-success bal-heading__text--size-SIZE"
			.replaceAll("LEVEL", ""+level)
			.replaceAll("SIZE", size);
	}
	public static Heading2Props make(int level) {
		return new Heading2Props(level);
	}
}
