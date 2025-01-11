tsParticles.load({
  particles: {
    number: {
      value: 120,
      density: {
        enable: true,
        area: 800
      }
    },
    color: {
      valor: "white"
      //value: ["#0C2856", "#4400FF", "#0068FF", "#00B7FF", "#3AE8C6", "#4400FF", "#4AE23D", "#97E53C", "#FFCE00", "#FFB000", "#FF6700", "#ED282C"]
    },
    shape: {
      type: "circle"
    },
    opacity: {
      value: .5
    },
    size: {
      value: { min: .1, max: 5 }
    },
    links: {
      enable: true,
      distance: 100,
      color: "#FFF",//"#808080",
      opacity: .5,
      width: 1
    },
    move: {
      enable: true,
      speed: 2,
      direction: "none",
      random: false,
      straight: false,
      outModes: "out"
    }
  },
  interactivity: {
    events: {
      onHover: {
        enable: true,
        mode: "grab"
      },
      onClick: {
        enable: true,
        mode: "push"
      }
    },
    modes: {
      grab: {
        distance: 140,
        links: {
          opacity: 1
        }
      },
      push: {
        quantity: 12
      }
    }
  }
});
