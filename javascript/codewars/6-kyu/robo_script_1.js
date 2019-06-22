// https://www.codewars.com/kata/58708934a44cfccca60000c4

const SYNTAX_HIGHLIGHT = {
  'F': 'pink',
  'R': 'green',
  'L': 'red',
  '\\d': 'orange',
}

const highlightSyntax = (code, syntax) => {
  const regex = new RegExp(`(${syntax}+)`, 'g')
  return code.replace(regex, `<span style="color: ${SYNTAX_HIGHLIGHT[syntax]}">$1</span>`)
}

export function highlight(code) {
  return Object.keys(SYNTAX_HIGHLIGHT).reduce((acc, syntax) => highlightSyntax(acc, syntax), code)
}
