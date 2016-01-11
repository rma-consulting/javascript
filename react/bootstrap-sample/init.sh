# Initialise package.json
cat > package.json <<EOL
{
  "name": "bootstrapped-rma-project",
  "version": "0.1.0",
  "description": "RMA React quickstart",
  "private": true,
  "license": "UNLICENSED",
  "scripts": {
    "clean": "rimraf dist/*",
    "eslint": "eslint ./src/",
    "copy": "copyfiles -f ./index.html ./dist",
    "build": "npm run clean && webpack --config webpack.config.prod.js && npm run copy",
    "start": "webpack-dev-server --config webpack.config.dev.js --port 8001"
  },
  "engines": {
    "node": ">=4.2.1",
    "npm": ">=3.3.0"
  },
  "dependencies": {
    "react": "^0.14.2",
    "react-dom": "^0.14.2"
  },
  "devDependencies": {
    "babel-core": "^6.2.1",
    "babel-eslint": "^4.1.6",
    "babel-loader": "^6.2.0",
    "babel-preset-es2015": "^6.1.18",
    "babel-preset-react": "^6.1.18",
    "copyfiles": "^0.2.1",
    "css-loader": "^0.23.0",
    "eslint": "^1.3.1",
    "eslint-plugin-react": "^3.11.3",
    "file-loader": "^0.8.5",
    "rimraf": "^2.5.0",
    "style-loader": "^0.13.0",
    "webpack": "^1.12.4",
    "webpack-dev-server": "^1.12.1",
    "webpack-hot-middleware": "^2.5.0"
  }
}
EOL

# Add .gitignore file
cat > .gitignore <<EOL
.idea
*.iml
.DS_Store
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk
logs
*.log
node_modules
pids
*.pid
*.pem
coverage/
EOL

# Add .eslint
cat > .eslintrc <<EOL
{
  "plugins": [
    "react"
  ],
  "env": {
    "browser": true
  },
  "parser": "babel-eslint",
  "ecmaFeatures": {
    "arrowFunctions": true,
    "blockBindings": true,
    "classes": true,
    "defaultParams": true,
    "destructuring": true,
    "forOf": true,
    "generators": false,
    "modules": true,
    "objectLiteralComputedProperties": true,
    "objectLiteralDuplicateProperties": false,
    "objectLiteralShorthandMethods": true,
    "objectLiteralShorthandProperties": true,
    "restParams": true,
    "spread": true,
    "superInFunctions": true,
    "templateStrings": true,
    "jsx": true
  },
  "rules": {
    "init-declarations": 0,
    "no-catch-shadow": 0,
    "no-delete-var": 2,
    "no-label-var": 0,
    "no-shadow-restricted-names": 2,
    "no-shadow": 2,
    "no-undef-init": 0,
    "no-undef": 2,
    "no-undefined": 0,
    "no-unused-vars": [2, {"vars": "local", "args": "after-used"}],
    "no-use-before-define": 2,

    "array-bracket-spacing": [2, "never"],
    "brace-style": [2, "1tbs", {"allowSingleLine": true }],
    "camelcase": [2, {"properties": "never"}],
    "comma-spacing": [2, {"before": false, "after": true}],
    "comma-style": [2, "last"],
    "computed-property-spacing": [2, "never"],
    "consistent-this": 0,
    "eol-last": 2,
    "func-names": 1,
    "func-style": 0,
    "id-length": 0,
    "indent": [2, 2, { "SwitchCase": 1, "VariableDeclarator": 1 }],
    "jsx-quotes": [2, "prefer-double"],
    "key-spacing": [2, {"beforeColon": false, "afterColon": true}],
    "lines-around-comment": 0,
    "linebreak-style": 0,
    "max-nested-callbacks": 0,
    "new-cap": [2, {"newIsCap": true}],
    "new-parens": 0,
    "newline-after-var": 0,
    "no-array-constructor": 0,
    "no-continue": 0,
    "no-inline-comments": 0,
    "no-lonely-if": 0,
    "no-mixed-spaces-and-tabs": 2,
    "no-multiple-empty-lines": [2, {"max": 2, "maxEOF": 1}],
    "no-nested-ternary": 2,
    "no-new-object": 2,
    "no-spaced-func": 2,
    "no-ternary": 0,
    "no-trailing-spaces": 2,
    "no-underscore-dangle": 0,
    "no-unneeded-ternary": 0,
    "object-curly-spacing": [0, "always"],
    "one-var": [2, "never"],
    "operator-assignment": 0,
    "operator-linebreak": 0,
    "padded-blocks": [2, "never"],
    "quote-props": 0,
    "quotes": [2, "single", "avoid-escape"],
    "id-match": 0,
    "semi-spacing": [2, {"before": false, "after": true}],
    "semi": [2, "always"],
    "sort-vars": 0,
    "space-before-keywords": [2, "always"],
    "space-after-keywords": [0, "always"],
    "space-before-blocks": 2,
    "space-before-function-paren": [2, { "anonymous": "always", "named": "never" }],
    "space-in-parens": [2, "never"],
    "space-infix-ops": 2,
    "space-return-throw-case": 2,
    "space-unary-ops": 0,
    "spaced-comment": [2, "always", {
      "exceptions": ["-", "+"],
      "markers": ["=", "!"]
    }],
    "wrap-regex": 0,

    "comma-dangle": [0, "always-multiline"],
    "no-cond-assign": [2, "always"],
    "no-console": 1,
    "no-constant-condition": 1,
    "no-control-regex": 2,
    "no-debugger": 1,
    "no-dupe-args": 2,
    "no-dupe-keys": 2,
    "no-duplicate-case": 2,
    "no-empty-character-class": 2,
    "no-empty": 2,
    "no-ex-assign": 2,
    "no-extra-boolean-cast": 0,
    "no-extra-parens": [2, "functions"],
    "no-extra-semi": 2,
    "no-func-assign": 2,
    "no-inner-declarations": 2,
    "no-invalid-regexp": 2,
    "no-irregular-whitespace": 2,
    "no-negated-in-lhs": 2,
    "no-obj-calls": 2,
    "no-regex-spaces": 2,
    "no-sparse-arrays": 2,
    "no-unreachable": 2,
    "use-isnan": 2,
    "valid-jsdoc": 0,
    "valid-typeof": 2,
    "no-unexpected-multiline": 0,

    "accessor-pairs": 0,
    "block-scoped-var": 2,
    "complexity": [0, 11],
    "consistent-return": 2,
    "curly": [2, "multi-line"],
    "default-case": 2,
    "dot-notation": [2, { "allowKeywords": true}],
    "dot-location": 0,
    "eqeqeq": 2,
    "guard-for-in": 2,
    "no-alert": 1,
    "no-caller": 2,
    "no-div-regex": 0,
    "no-else-return": 2,
    "no-empty-label": 2,
    "no-eq-null": 0,
    "no-eval": 2,
    "no-extend-native": 2,
    "no-extra-bind": 2,
    "no-fallthrough": 2,
    "no-floating-decimal": 2,
    "no-implicit-coercion": 0,
    "no-implied-eval": 2,
    "no-invalid-this": 0,
    "no-iterator": 2,
    "no-labels": 2,
    "no-lone-blocks": 2,
    "no-loop-func": 2,
    "no-multi-spaces": 2,
    "no-multi-str": 2,
    "no-native-reassign": 2,
    "no-new": 2,
    "no-new-func": 2,
    "no-new-wrappers": 2,
    "no-octal": 2,
    "no-octal-escape": 2,
    "no-param-reassign": 2,
    "no-process-env": 0,
    "no-proto": 2,
    "no-redeclare": 2,
    "no-return-assign": 2,
    "no-script-url": 2,
    "no-self-compare": 2,
    "no-sequences": 2,
    "no-throw-literal": 2,
    "no-unused-expressions": 2,
    "no-useless-call": 0,
    "no-void": 0,
    "no-warning-comments": [0, { "terms": ["todo", "fixme", "xxx"], "location": "start" }],
    "no-with": 2,
    "radix": 2,
    "vars-on-top": 2,
    "wrap-iife": [2, "any"],
    "yoda": 2,

    "arrow-parens": 0,
    "arrow-spacing": [
      2,
      {
        "before": true,
        "after": true
      }
    ],
    "constructor-super": 0,
    "generator-star-spacing": 0,
    "no-class-assign": 0,
    "no-cond-assign": [2, "always"],
    "no-console": 1,
    "no-const-assign": 2,
    "no-constant-condition": 1,
    "no-control-regex": 2,
    "no-debugger": 1,
    "no-delete-var": 2,
    "no-dupe-args": 2,
    "no-dupe-keys": 2,
    "no-duplicate-case": 2,
    "no-empty-character-class": 2,
    "no-empty": 2,
    "no-ex-assign": 2,
    "no-extra-boolean-cast": 0,
    "no-extra-parens": [2, "functions"],
    "no-extra-semi": 2,
    "no-func-assign": 2,
    "no-inner-declarations": 2,
    "no-invalid-regexp": 2,
    "no-irregular-whitespace": 2,
    "no-negated-in-lhs": 2,
    "no-obj-calls": 2,
    "no-regex-spaces": 2,
    "no-sparse-arrays": 2,
    "no-this-before-super": 0,
    "no-unreachable": 2,
    "no-undef": 1,
    "no-undefined": 0,
    "no-unexpected-multiline": 0,
    "no-unused-vars": [
      2,
      {
        "vars": "local",
        "args": "after-used"
      }
    ],
    "object-shorthand": 0,
    "prefer-const": 2,
    "prefer-spread": 0,
    "prefer-reflect": 0,
    "quotes": [
      2,
      "single"
    ],
    "require-yield": 0,
    "strict": [
      2,
      "never"
    ],
    "use-isnan": 2,
    "valid-jsdoc": 0,
    "valid-typeof": 2,

    "jsx-quotes": [2, "prefer-double"],
    "react/display-name": 0,
    "react/jsx-boolean-value": [2, "never"],
    "react/jsx-closing-bracket-location": [2, "line-aligned"],
    "react/jsx-curly-spacing": 0,
    "react/jsx-indent-props": [2, 2],
    "react/jsx-no-duplicate-props": 0,
    "react/jsx-no-undef": 2,
    "react/jsx-sort-prop-types": 0,
    "react/jsx-sort-props": 0,
    "react/jsx-uses-react": 2,
    "react/jsx-uses-vars": 2,
    "react/no-danger": 0,
    "react/no-did-mount-set-state": [2, "allow-in-func"],
    "react/no-did-update-set-state": [2, "allow-in-func"],
    "react/no-multi-comp": 2,
    "react/no-unknown-property": 2,
    "react/prop-types": [2, {"ignore":["children"]}],
    "react/react-in-jsx-scope": 2,
    "react/require-extension": 0,
    "react/self-closing-comp": 2,
    "react/sort-comp": [2, {
      "order": [
        "lifecycle",
        "/^on.+$/",
        "/^(get|set)(?!(InitialState$|DefaultProps$|ChildContext$)).+$/",
        "everything-else",
        "/^render.+$/",
        "render"
      ]
    }],
    "react/wrap-multilines": [2, {
      "declaration": true,
      "assignment": true,
      "return": true
    }]
  }
}
EOL

# Add index html
cat > index.html <<EOL
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Title</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
</head>
<body>
  <div id="app"></div>
  <script>__REACT_DEVTOOLS_GLOBAL_HOOK__ = parent.__REACT_DEVTOOLS_GLOBAL_HOOK__</script>
  <script src="bundle.js"></script>
</body>
</html>
EOL

# Add index.js
mkdir src
cat > src/index.js <<EOL
import React from 'react';
import { render } from 'react-dom';

render(<div>Hello World</div>, document.getElementById('app'));
EOL

# Add webpack config
cat > webpack.config.dev.js <<EOL
/* eslint-env node */
var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: [
    'webpack-hot-middleware/client',
    './src/index.js'
  ],
  output: {
    path: path.resolve(__dirname, 'tmp'),
    filename: 'bundle.js',
    publicPath: '/'
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin(),
    new webpack.DefinePlugin({
      'process.env': {
        'NODE_ENV': JSON.stringify('development')
      }
    })
  ],
  module: {
    loaders: [
      { test: /\.css$/, loader: 'style!css' },
      { test: /\.js$/, loader: 'babel', query: { presets: ['react', 'es2015']}, include: path.join(__dirname, 'src')},
    ]
  },
  devtool: 'eval'
};

EOL

cat > webpack.config.prod.js <<EOL
/* eslint-env node */
var path = require('path');
var webpack = require('webpack');

module.exports = {
  entry: [
    './src/index.js'
  ],
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js',
    publicPath: '/',
    sourceMapFilename: '[file].map'
  },
  plugins: [
    new webpack.optimize.OccurenceOrderPlugin(),
    new webpack.DefinePlugin({
      'process.env': {
        'NODE_ENV': JSON.stringify('production')
      }
    }),
    new webpack.optimize.UglifyJsPlugin({
      compressor: {
        warnings: false
      }
    })
  ],
  module: {
    loaders: [
      { test: /\.scss$/, loader: 'style!css' },
      { test: /\.js$/, loader: 'babel', query: { presets: ['react', 'es2015']}, include: path.join(__dirname, 'src')},
    ]
  },
  devtool: 'source-map'
};
EOL

# Add readme
cat > readme.md <<EOL
## Developers

### Running locally

EOL

# Initialise a git repository
git init

# Download dependencies
npm install
