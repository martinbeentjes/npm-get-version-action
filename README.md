# npm-get-version-action

This GitHub Action retrieves the package version from the package.json file and sets the version in the `current-version` output value usable in your workflow file.

## Example

To use this action in your project, use the following:

```yaml
 - name: get-npm-version
   id: packageVersion
   uses: martinbeentjes/npm-get-version-action@master
```

The Action sets an output variable called `current-version` which can be used in a following step by using `${{ steps.packageVersion.outputs.current-version}}`.
