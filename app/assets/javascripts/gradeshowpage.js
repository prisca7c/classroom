class Appender {
  fallCourseIndexPage(data) {
    let courseName = data["name"]
    let courseId = data["id"]
    let courseTeacher = data["teacher"]["users"][0]["name"]
    let semester = data["semester"]
    let studentArray = data["students"]
    function test(studentArray) {
      let emptyArray = []
      for (var i = 0; i < studentArray.length; i++) {
        emptyArray.push('<tr><th scope="row">Student</th><td class="studentName">' + studentArray[i]["users"][0]["name"] + '</td></tr>')
      }
      return emptyArray.join("")
    }
    $(`div.${courseId}`).append('Semester: ' + semester + '<table class="table table-striped"><thead><tr><th scope="col">Role</th><th scope="col">Name</th></tr></thead><tbody><tr><th scope="row">Instructor</th><td class="instructor">' + courseTeacher + '</td></tr>' + test(studentArray) + '</tbody></table>')
  }

  winterCourseIndexPage(data) {
    let courseName = data["name"]
    let courseId = data["id"]
    let courseTeacher = data["teacher"]["users"][0]["name"]
    let semester = data["semester"]
    let studentArray = data["students"]
    function test(studentArray) {
      let emptyArray = []
      for (var i = 0; i < studentArray.length; i++) {
        emptyArray.push('<tr><th scope="row">Student</th><td class="studentName">' + studentArray[i]["users"][0]["name"] + '</td></tr>')
      }
      return emptyArray.join("")
    }
    $(`div.${courseId}`).append('Semester: ' + semester + '<table class="table table-striped"><thead><tr><th scope="col">Role</th><th scope="col">Name</th></tr></thead><tbody><tr><th scope="row">Instructor</th><td class="instructor">' + courseTeacher + '</td></tr>' + test(studentArray) + '</tbody></table>')
  }

  studentShowPageFall(data) {
    let emptyArray = []
    function dataCollector(data) {
    for (var i = 0; i < data.length; i++) {
      let courseName = data[i]["course"]["name"]
      let grade = data[i]["grade"]["letter"]
      let enrolledOnRaw = data[i]["created_at"].split("T")[0]
      emptyArray.push('<tr><th scope="row">' + courseName + '</th><td>' + grade + '</td><td>' + enrolledOnRaw + '</td></tr>')
    }
    return emptyArray.join("")
    }
    $('div.fallinfo').append('<table class="table table-striped"<thead><tr><th scope="col">Course Name</th><th scope="col">Grade</th><th scope="col">Enrolled On</th></tr></thead><tbody>' + dataCollector(data) + '</tbody></table>')
    $('a.fallinfo')
  }

  studentShowPageWinter(data) {
    let emptyArray = []
    function dataCollector(data) {
    for (var i = 0; i < data.length; i++) {
      let courseName = data[i]["course"]["name"]
      let grade = data[i]["grade"]["letter"]
      let enrolledOnRaw = data[i]["created_at"].split("T")[0]
      // var enrolledOn = enrolledOnRaw.split("T")[1]
      emptyArray.push('<tr><th scope="row">' + courseName + '</th><td>' + grade + '</td><td>' + enrolledOnRaw + '</td></tr>')
    }
    return emptyArray.join("")
    }
    $('div.winterinfo').append('<table class="table table-striped"<thead><tr><th scope="col">Course Name</th><th scope="col">Grade</th><th scope="col">Enrolled On</th></tr></thead><tbody>' + dataCollector(data) + '</tbody></table>')
    $('a.winterinfo')
  }

}
