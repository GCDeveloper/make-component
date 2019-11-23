#!/bin/bash

COMPONENT_NAME="$1"
HAS_CHILDREN="$2"


if [ ! $HAS_CHILDREN ]; then
    echo "
const $COMPONENT_NAME = ({ className }) => {
    className += ' $COMPONENT_NAME'
    return <div className={className}></div>;
};"
else
    echo "
const $COMPONENT_NAME = ({ className, children }) => {
    className += ' $COMPONENT_NAME'
    return <div className={className}>{children}</div>;
};"
fi