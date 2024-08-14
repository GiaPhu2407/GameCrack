import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
    "./node_modules/flowbite/**/*.js"

  ],
  theme: {
    extend: {
      backgroundImage: {
        "gradient-radial": "radial-gradient(var(--tw-gradient-stops))",
        "gradient-conic":
          "conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))",
      },
      animation: {
        'subheaderimg': 'subheaderimg 10s linear infinite',
        appear: 'appear 5s ease-out forwards',
        "loop-scroll": "loop-scroll 10s linear infinite",
      },
      keyframes: {
        subheaderimg: {
          '0%': { transform: 'translateX(4%)' },
          '50%': { transform: 'translateX(-6%)' },
          '100%': { transform: 'translateX(5%)' },// Replace with your desired keyframe properties
          // Example transformation
        },
        appear: {
          from: { opacity: '0', transform: 'translateY(100%)' },
          to: { opacity: '5', transform: 'translateY(-50%)' },
        },
        "loop-scroll": {
          from: { transform: "translateX(-100%)" },
          to: { transform: "translateX(0%)" },
        },
      },
    },
  },
  daisyui: {
    themes: ["light", "dark", ],
  },
  plugins: [require('daisyui'),],
};
export default config;
