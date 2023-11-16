class Calculator {
  var fVal, lVal, sign;
  Calculator(var a, var b, var sign) {
    fVal = a;
    lVal = b;
    this.sign = sign;
  }
  num add() {
    return fVal + lVal;
  }

  num subtract() {
    return fVal - lVal;
  }

  num division() {
    return fVal / lVal;
  }

  num product() {
    return fVal * lVal;
  }
}
