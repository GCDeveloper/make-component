# make-component

`npm i -g @toolia/make-component`

This command line tool outputs a functional react component with className and optionally children to the console.

`make-component ComponentName children?`

You can write it to a file like this:

`make-component ComponentName children? > ComponentName.js`

# Example

> \$ make-component MyComponent

```
const MyComponent = ({ className = '' }) => {
    className += ' MyComponent'
    return <div className={className}></div>;
};
```

> \$ make-component Hello y

```
const Hello = ({ className = '', children }) => {
    className += ' Hello'
    return <div className={className}>{children}</div>;
};
```
