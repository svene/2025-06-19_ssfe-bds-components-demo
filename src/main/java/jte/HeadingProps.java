package jte;

public record HeadingProps(Integer level) {

	public String classes() {
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
}
