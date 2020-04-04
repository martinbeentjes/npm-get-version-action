# npm-get-version-action

This GitHub Action retrieves the package version from the package.json file and sets the version in the `current-version` output value usable in your workflow file.

## Example

To use this action in your project, use the following:

```
 - name: get-npm-version
   uses: martinbeentjes/npm-get-version-action@v1
```

The Action sets an output variable called `current-version` which can be used in a following step by using `${{ steps.get-npm-version.outputs.current-version}}``.
