
module.exports = {  
  mode: 'jit',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {
      colors: {
        'white-75': 'rgba(255, 255, 255, 0.75)',
      },
    },
  },
  plugins: [],
  purge: {
    // ...
    options: {
      safelist: ['bg-opacity-75'],
    },
  },
}

