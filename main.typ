#import "@preview/touying:0.7.4": *
#import themes.simple: *

#show: simple-theme.with(aspect-ratio: "16-9")
#set text(font: "Public Sans")

#let text-slide(body) = centered-slide[
  #pad(bottom: 2em)[
    #text(32pt, font: "Liberation Sans", tracking: -3pt)[
      #body
    ]
  ]
]

#let scattered-slide(txt, img1, img2) = touying-slide-wrapper(self => {
  let page-width = 29.7cm
  let page-height = 16.706cm
  let midpoint = 18.0cm
  touying-slide(
    self: self,
    config: config-page(
      margin: 0pt,
      width: page-width,
      height: page-height,
    ),
    box(width: 100%, height: 100%)[
      #place(top + left, dx: 0cm, dy: 0cm, image(
        img1,
        width: midpoint,
        height: page-height,
      ))
      #place(top + left, dx: midpoint, dy: 0cm, image(
        img2,
        width: page-width - midpoint,
        height: page-height,
      ))
      #place(top + left, dx: 1cm, dy: 12.5cm, [
        #set par(leading: 0.1em)
        #text(
          60pt,
          font: "Inter Display",
          weight: "extrabold",
          tracking: -1.5pt,
          fill: rgb("#729fcf"),
        )[
          #txt
        ]
      ])
    ],
  )
})

#let img-slide(txt, img1) = touying-slide-wrapper(self => {
  let page-width = 29.7cm
  let page-height = 16.706cm
  touying-slide(
    self: self,
    config: config-page(margin: 0pt, width: page-width, height: page-height),
    box(width: 100%, height: 100%)[
      #align(top + center)[
        #v(1.5cm)
        #text(44pt, font: "Syne", weight: "extrabold")[#txt]
      ]
      #place(top + left, dx: 2cm, dy: 4cm, image(
        img1,
        width: page-width - 4cm,
        height: page-height - 6cm,
        fit: "contain",
      ))
    ],
  )
})

#let img-quote-slide(txt, img1) = touying-slide-wrapper(self => {
  let page-width = 29.7cm
  let page-height = 16.706cm
  touying-slide(
    self: self,
    config: config-page(margin: 0pt, width: page-width, height: page-height),
    box(width: 100%, height: 100%)[
      #set par(leading: 0.2em)
      #place(center + horizon, dx: 0cm + (0.5 * page-width) - 10cm, dy: 0cm)[
        #text(44pt, font: "Aporetic Sans")[#txt]
      ]
      #place(top + left, dx: 0cm, dy: 0cm, image(
        img1,
        width: page-width - 20cm,
        height: page-height,
      ))
    ],
  )
})


#text-slide[
  A heartfelt letter to sumire#pause + \
  Art is an ephemeral thing
]

#text-slide[
  feel yourself out.
]
#scattered-slide(
  [ENIGMATIC \
    FEELINGS],
  "cat.png",
  "dog.png",
)
#img-slide("Cause and Effect", "artichoke.png")

==

#align(center, text(font: "Inter Display", size: 54pt, weight: "semibold")[
  ULTIMATELY
])
#v(0cm)
#align(center, text(font: "Aporetic Serif Mono", size: 18pt)[
  · You need to open the website \
  · You need to check your conversations \
  · You need the website to still exist and be up \
  · You need me to send this long message \
  · You need to click on this message and read this \
  BUT EVEN SO.
])
== Normal slide
I wanted to include a normal slide for normalness

LOOK MATH \
$12/2 + sqrt(21) = e^(i pi)$


$2_2 + integral_2^3$
#img-quote-slide(
  [
    I Just \
    Do \
    Hate \
    #text(fill: rgb("d62e4e"))[This], \
    You \
    Lovely \
    Above \
    #text(fill: rgb("d62e4e"))[This].
  ],
  "bat.png",
)
