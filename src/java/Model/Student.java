
package Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Anders Stromberg, anst9000
 */
@Entity
@Table(name = "STUDENT")
@XmlRootElement
@NamedQueries({
	@NamedQuery(name = "Student.findAll", query = "SELECT s FROM Student s")
	, @NamedQuery(name = "Student.findByStudentId", query = "SELECT s FROM Student s WHERE s.studentId = :studentId")
	, @NamedQuery(name = "Student.findByStudentName", query = "SELECT s FROM Student s WHERE s.studentName = :studentName")
	, @NamedQuery(name = "Student.findByStudentEmail", query = "SELECT s FROM Student s WHERE s.studentEmail = :studentEmail")})
public class Student implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "STUDENT_ID")
	private Integer studentId;
	@Size(max = 100)
    @Column(name = "STUDENT_NAME")
	private String studentName;
	@Size(max = 100)
    @Column(name = "STUDENT_EMAIL")
	private String studentEmail;

	public Student() {
	}

	public Student(Integer studentId) {
		this.studentId = studentId;
	}

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (studentId != null ? studentId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Student)) {
			return false;
		}
		Student other = (Student) object;
		if ((this.studentId == null && other.studentId != null) || (this.studentId != null && !this.studentId.equals(other.studentId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "Model.Student[ studentId=" + studentId + " ]";
	}

}
