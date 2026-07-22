# sed Regular Expression Lab

## Goal

Practice selecting, replacing, deleting, and normalizing text using `sed`.

## Replace the First Match

```bash
sed 's/ERROR/CRITICAL/' sample-data/app.log
```

## Replace All Matches

```bash
sed 's/INFO/INFORMATION/g' sample-data/app.log
```

## Use Extended Regular Expressions

Mark warning and error lines:

```bash
sed -E 's/(WARNING|ERROR)/[\1]/' sample-data/app.log
```

## Print Matching Lines Only

```bash
sed -n '/ERROR/p' sample-data/app.log
```

Using Extended Regex:

```bash
sed -En '/WARNING|ERROR/p' sample-data/app.log
```

## Delete Matching Lines from Output

Remove debug messages from displayed output:

```bash
sed '/DEBUG/d' sample-data/app.log
```

## Normalize Whitespace

Replace one or more whitespace characters with one space:

```bash
sed -E 's/[[:space:]]+/ /g' sample-data/app.log
```

## Replace Configuration Values

Change the server port in the output:

```bash
sed -E 's/^(SERVER_PORT=)[[:digit:]]+/\19090/' \
    sample-data/config.txt
```

## Safe File Editing

Preview the result before changing a file:

```bash
sed -E 's/DEBUG=true/DEBUG=false/' sample-data/config.txt
```

Write the result to a new file:

```bash
sed -E 's/DEBUG=true/DEBUG=false/' sample-data/config.txt \
    > sample-data/config.updated.txt
```

Compare the files:

```bash
diff sample-data/config.txt sample-data/config.updated.txt
```

## Safety Rule

Do not use in-place editing until the expression has been tested and its output verified.
