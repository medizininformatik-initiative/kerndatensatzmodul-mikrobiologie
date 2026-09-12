# Recipe: add UML diagrams and other images

**Goal.** Add a diagram that explains your module's structure, in a way that is
still maintainable in five years.

**Prerequisites.** A module that builds ([create a new module](create-a-new-module.md)),
and Graphviz for PlantUML class diagrams. The dev container has it, all three
workflows install it (`apt-get install -y graphviz`), and locally `which dot`
must find something.

## Where files go

```text
input/images-source/<name>.plantuml   # the EDITABLE source — commit this
temp/pages/_includes/<name>.svg       # what the publisher renders — build artefact, not committed
input/images/<name>.svg|png           # only for images you did NOT generate from a source
```

**The rendered SVG never lands in `input/images/`.** The IG Publisher renders
each PlantUML source into `temp/pages/_includes/` and inlines it into the page
that includes it; measured on 2026-09-12, `input/images/` held nothing but its
`.gitkeep` while both diagrams rendered correctly. Committing a rendered copy
there is how this module carried two stale PNGs for a while.

Keep the source in the repository: HL7's
[IG best-practice guidance](https://build.fhir.org/ig/FHIR/ig-guidance/best-practice.html)
asks that a diagram's source be checked in and its tool be free or widely used,
so that the picture can still be changed after its author has moved on. This
scaffold treats that as the default and gives you `input/images-source/` for it.

## Steps

1. Write the source as `input/images-source/<name>.plantuml`. **The extension
   must be `.plantuml`** — a `.puml` file is silently ignored, with no warning
   and no rendered output.
2. Reference it from a page with a Jekyll include, naming the SVG the publisher
   will produce:

   ```markdown
   <figure>
   {% include module-overview.svg %}
   <figcaption>Overview of the {{MODULE_TITLE}} module: what it shows, in one sentence.</figcaption>
   </figure>
   ```

   **The include is what triggers the rendering.** Without a page that includes
   `<name>.svg`, the publisher does not render the source at all — an
   `<img src="module-overview.svg">` reference leaves the page empty and produces
   no SVG.
3. Describe the diagram in the `<figcaption>`. The include *inlines* the SVG, so
   there is no `<img>` and no `alt` attribute to write — the caption is what a
   reader and a screen reader get. (An image you bring yourself, referenced with
   `<img>`, still needs an `alt` text; the checklist expects one.)
4. Reference the same include from the German mirror page. The SVG is shared,
   only the caption is translated.
5. Build and check both language versions.

## Choosing what to draw

- **UML class diagram** — the module's information model and how its parts relate.
  Best on `uml-diagrams.md`.
- **Sequence diagram** — an interaction over time (a query, a submission flow).
  Best on the guidance page describing that flow.
- Prefer **one diagram that answers a question** over several decorative ones.

## Expected result

The diagram appears in both language versions as an inline `<svg>` element — not
as an `<img>` — its source sits in `input/images-source/`, and the caption
describes it. Measured on this module: `output/en/uml-diagrams.html` and
`output/de/uml-diagrams.html` each carry two `<svg>` tags and no image tags.

## Common errors & fixes

| Symptom | Cause | Fix |
| --- | --- | --- |
| No SVG anywhere, no error either | The source is named `.puml` | Rename to `.plantuml` |
| Source unchanged but nothing rendered | No page includes `<name>.svg` | Add `{% include <name>.svg %}`; an `<img src>` does not trigger rendering |
| Empty space where the diagram should be | The page references the image with `<img src="…svg">` | Use the include form |
| PlantUML not rendered, build log mentions dot | Graphviz missing in the build environment | Use the dev container; the workflows already install Graphviz |
| A rendered SVG or PNG sits in `input/images/` beside a source | Someone committed build output | Delete it — it goes stale silently while the source moves on |
| Licence concern | The image embeds third-party material | Only add images you may redistribute under the IG's CC-BY-4.0 |
