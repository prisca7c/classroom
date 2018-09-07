class Appender {
  fallCourseIndexPage(data) {
    let courseName = data["name"]
    let courseId = data["id"]
    let courseTeacher = data["teacher"]["user"]["name"]
    let semester = data["semester"]
    let studentArray = data["students"]
    function test(studentArray) {
      let emptyArray = []
      for (var i = 0; i < studentArray.length; i++) {
        emptyArray.push('<tr><th scope="row">Student</th><td class="studentName">' + studentArray[i]["user"]["name"] + '</td></tr>')
      }
      return emptyArray.join("")
    }
    $(`div.${courseId}`).append('Semester: ' + semester + '<table class="table table-striped"><thead><tr><th scope="col">Role</th><th scope="col">Name</th></tr></thead><tbody><tr><th scope="row">Instructor</th><td class="instructor">' + courseTeacher + '</td></tr>' + test(studentArray) + '</tbody></table>')
  }

  winterCourseIndexPage(data) {
    let courseName = data["name"]
    let courseId = data["id"]
    let courseTeacher = data["teacher"]["user"]["name"]
    let semester = data["semester"]
    let studentArray = data["students"]
    function test(studentArray) {
      let emptyArray = []
      for (var i = 0; i < studentArray.length; i++) {
        emptyArray.push('<tr><th scope="row">Student</th><td class="studentName">' + studentArray[i]["user"]["name"] + '</td></tr>')
      }
      return emptyArray.join("")
    }
    $(`div.${courseId}`).append('Semester: ' + semester + '<table class="table table-striped"><thead><tr><th scope="col">Role</th><th scope="col">Name</th></tr></thead><tbody><tr><th scope="row">Instructor</th><td class="instructor">' + courseTeacher + '</td></tr>' + test(studentArray) + '</tbody></table>')
  }
}
