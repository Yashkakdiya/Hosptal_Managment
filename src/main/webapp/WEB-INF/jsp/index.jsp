<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SHYNCARE - Medical Excellence</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/brands.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/solid.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/regular.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/light.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/brands.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/solid.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/regular.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/light.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/brands.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/fontawesome.min.css">
</head>
<body>

    <header>
        <div class="container">
            <div class="top-bar">
                <span>EMERGENCY 101</span> |
                <span>WORK HOUR 09:00 - 20:00 Everyday</span> |
                <span>LOCATION, Bengaluru 560041</span>
            </div>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#welcome">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#doctors">Doctors</a></li>
                    <li><a href="#specialties">Specialties</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <button class="appointment-btn" onclick="document.getElementById('hero').scrollIntoView({ behavior: 'smooth' })">Appointment</button>
            </nav>
        </div>
    </header>

    <section id="showcase">
        <div class="container">
            <h1>Leading the Way in Medical Excellence</h1>
            <p>Our Services</p>
            <a href="#hero">Book an Appointment</a>
        </div>
    </section>


    <section id="welcome">
        <div class="container">
            <h2>WELCOME TO SHYNCARE</h2>
            <p>At SHYN Care, we are committed to providing world-class healthcare with compassion and excellence. Our state-of-the-art facility is designed to cater to the diverse medical needs of our community, ensuring that every patient receives personalized and quality treatment.</p>
            <a href="#">Learn More →</a>
        </div>
    </section>

    <section id="images">
        <div class="container">
            <img src="${pageContext.request.contextPath}/assets/images/dcheck.jpeg" alt="Welcome Image">  </div>
    </section>

    <section id="services">
        <div class="container">
            <h2>Our Services</h2>
            <p>A passion for putting patients first.</p>
            <ul class="services-grid">
                <div>
                    <img src="${pageContext.request.contextPath}/assets/images/checkup.png" alt="Free Checkup">  <p >  Free Checkup</p>
                    <a href="/free-checkup">Free Checkup</a>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/assets/images/cardio.png" alt="Cardiogram">  <p>Cardiogram</p>
                    <a href="/cardiogra">Click Here</a>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/assets/images/dna.png" alt="DNA Testing">  <p>DNA Testing</p>
                    <a href="/Dna">DNA Testing</a>

                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/assets/images/bloodBank.png" alt="Blood Bank">  <p>Blood Bank</p>
                    <a href="/BloodBank">Blood Bank</a>
                </div>
            </ul>
            <p>At SHYN Care, we provide expert medical care with compassion. Our key services include:</p>
            <ul>
                <li>General & Specialized Care - Consultations with top doctors across various fields.</li>
                <li>Advanced Diagnostics - MRI, CT Scan, X-ray, and lab testing.</li>
                <li>Emergency & ICU - 24/7 critical care for urgent medical needs.</li>
                <li>Maternity & Child Care - Comprehensive care for mothers and babies.</li>
                <li>Dental & Oral Health - Routine check-ups, orthodontics, and cosmetic dentistry.</li>
                <li>Physiotherapy & Rehabilitation - Recovery support for injuries and surgeries.</li>
                <li>Wellness & Preventive Care - Health screenings, vaccinations, and lifestyle guidance.</li>
            </ul>
        </div>
    </section>

    <section id="specialties">
        <div class="container">
            <h2>Our Specialties</h2>
            <div class="specialties-grid">
                <div class="specialty-box" onmouseover="showDetails('neurology')" onmouseout="hideDetails('neurology')" onclick="toggleDetails('neurology')">
                    <img src="${pageContext.request.contextPath}/assets/images/Ydoctor.jpeg" alt="Neurology">
                    <p>Neurology</p>
                    <div id="neurology" class="details">
                        <span class="close-btn" onclick="hideDetails('neurology')">&times;</span>
                        <p>Neurology deals with disorders of the brain, spinal cord, and nerves.</p>
                    </div>
                </div>
                <div class="specialty-box" onmouseover="showDetails('pediatrician')" onmouseout="hideDetails('pediatrician')" onclick="toggleDetails('pediatrician')">
                    <img src="${pageContext.request.contextPath}/assets/images/Ndoctor.jpeg" alt="Pediatrician">
                    <p>Pediatrician</p>
                    <div id="pediatrician" class="details">
                        <span class="close-btn" onclick="hideDetails('pediatrician')">&times;</span>
                        <p>Pediatricians care for children's health and development.</p>
                    </div>
                </div>
                <div class="specialty-box" onmouseover="showDetails('oncology')" onmouseout="hideDetails('oncology')" onclick="toggleDetails('oncology')">
                    <img src="${pageContext.request.contextPath}/assets/images/Gdoctor1.jpeg" alt="Oncology">
                    <p>Oncology</p>
                    <div id="oncology" class="details">
                        <span class="close-btn" onclick="hideDetails('oncology')">&times;</span>
                        <p>Oncology specializes in the treatment of cancer.</p>
                    </div>
                </div>
                <div class="specialty-box" onmouseover="showDetails('otorhino')" onmouseout="hideDetails('otorhino')" onclick="toggleDetails('otorhino')">
                    <img src="${pageContext.request.contextPath}/assets/images/Ydoctor.jpeg" alt="Otorhinolaryngology">
                    <p>ENT</p>
                    <div id="otorhino" class="details">
                        <span class="close-btn" onclick="hideDetails('otorhino')">&times;</span>
                        <p>ENT doctors treat ear, nose, and throat conditions.</p>
                    </div>
                </div>
                <div class="specialty-box" onmouseover="showDetails('cardiology')" onmouseout="hideDetails('cardiology')" onclick="toggleDetails('cardiology')">
                    <img src="${pageContext.request.contextPath}/assets/images/Gdoctor1.jpeg" alt="Cardiovascular">
                    <p>Cardiovascular</p>
                    <div id="cardiology" class="details">
                        <span class="close-btn" onclick="hideDetails('cardiology')">&times;</span>
                        <p>Cardiology deals with heart-related diseases and treatments.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        function showDetails(id) {
            document.getElementById(id).style.display = 'block';
        }

        function hideDetails(id) {
            document.getElementById(id).style.display = 'none';
        }

        function toggleDetails(id) {
            let element = document.getElementById(id);
            if (element.style.display === 'block') {
                element.style.display = 'none';
            } else {
                element.style.display = 'block';
            }
        }
    </script>


        <section class="images-section">
        <div class="container">
            <img src="${pageContext.request.contextPath}/assets/images/doctorNdMedical.jpeg" alt="Doctor and Patient">  <img src="${pageContext.request.contextPath}/assets/images/d&m.jpeg" alt="Medical Team">  </div>
    </section>
    <section id="hero">
        <div class="container">
            <h2>Book an Appointment</h2>
            <p>Take the First Step Towards Better Health. Your well-being is our priority. Booking an appointment at Shyn Care is quick and hassle-free. Whether you need a routine check-up, specialist consultation, or urgent medical attention, we are here to provide the best care.</p>
            <form id="appointmentForm">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

               <label for="time">Time:</label>
                <select id="time" name="time">
                    <option value="morning">Morning between 8:00 AM and 12:00 AM</option>
                    <option value="afternoon">Afternoon</option>
                    <option value="evening">Evening</option>
                </select>

                <label for="doctor">Doctor:</label>
                <select id="doctor" name="doctor">
                <c:forEach var="doctor" items="${doctors}">
                    <option value="${doctor.id}">${doctor.name} (${doctor.specialty})</option>
                 </c:forEach>
                </select>

                <button type="submit">Submit</button>
                <button type="button" id="editAppointment" style="display: none;">Edit Appointment</button>
            </form>
        </div>


    </section>
    <section id="doctors">
        <div class="container">
            <h2>TRUSTED CARE - Our Doctors</h2>
            <div class="doctor-grid">
                <div class="doctor-item">
                    <img src="${pageContext.request.contextPath}/assets/images/Gdoctor1.jpeg" alt="Neveen Gal">
                    <h3>Naveen</h3>
                    <p>NEUROLOGIST</p>
                    <a href="/naveen">View Profile</a>
                </div>
                <div class="doctor-item">
                    <img src="${pageContext.request.contextPath}/assets/images/Ydoctor.jpeg" alt="Yash Kakdiya">
                    <h3>Yash Kakdiya</h3>
                    <p>GYNECOLOGIST</p>
                    <a href="/yash">View Profile</a>
                </div>
                <div class="doctor-item">
                    <img src="${pageContext.request.contextPath}/assets/images/Ndoctor.jpeg" alt="Narayan Maha">
                    <h3>Narayan</h3>
                    <p>PEDIATRICIAN</p>
                    <a href="/narayan">View Profile</a>
                </div>
            </div>
        </div>
    </section>




    <section id="contact">
        <div class="container">
            <h2>GET IN TOUCH - Contact</h2>
            <div class="contact-grid">
                <div class="contact-item">
                    <img src="${pageContext.request.contextPath}/assets/images/emer.png" alt="Emergency">
                    <p>EMERGENCY<br>8320114974</p>
                </div>
                <div class="contact-item">
                    <img src="${pageContext.request.contextPath}/assets/images/location.png" alt="Location">
                    <p>LOCATION<br>Alliance, Bengaluru 560041</p>
                </div>
                <div class="contact-item">
                    <img src="${pageContext.request.contextPath}/assets/images/mail.gif" alt="Email">
                    <p>EMAIL<br>shyncare@yourmail.com</p>
                </div>
                <div class="contact-item">
                    <img src="${pageContext.request.contextPath}/assets/images/working.png" alt="Working Hours">
                    <p>WORKING HOURS<br>Mon-Sat: 09:00 - 20:00</p>
                </div>
            </div>
        </div>

    </section>


    <script>
        // Example: Simulating a booked appointment (replace with actual data retrieval)
        let bookedAppointment = null; // Initially no appointment

        function populateForm(appointment) {
            document.getElementById('name').value = appointment.name;
            document.getElementById('email').value = appointment.email;
            document.getElementById('time').value = appointment.time;
            document.getElementById('doctor').value = appointment.doctor;
            document.getElementById('department').value = appointment.department;
            document.getElementById('message').value = appointment.message;
        }

        function clearForm() {
            document.getElementById('name').value = '';
            document.getElementById('email').value = '';
            document.getElementById('time').value = 'morning'; // Reset to default
            document.getElementById('doctor').value = 'neveen'; // Reset to default
            document.getElementById('department').value = 'neurology'; // Reset to default
            document.getElementById('message').value = '';
        }

        document.getElementById('appointmentForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent default form submission

            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const time = document.getElementById('time').value;
            const doctor = document.getElementById('doctor').value;
            const message = document.getElementById('message').value;

            // Simulate booking an appointment
            bookedAppointment = { name, email, time, doctor, department, message };

            // Show the edit button
            document.getElementById('editAppointment').style.display = 'block';

            console.log('Appointment booked:', bookedAppointment);
            alert('Appointment booked!');

            // Optionally clear the form after submission
            clearForm();
        });

        document.getElementById('editAppointment').addEventListener('click', function() {
            if (bookedAppointment) {
                // Populate the form with the booked appointment details
                populateForm(bookedAppointment);

                // Hide the edit button again
                document.getElementById('editAppointment').style.display = 'none';

                // Allow the user to edit and resubmit
                alert('Edit your appointment details and resubmit.');
            } else {
                alert('No appointment to edit.');
            }
        });
        document.getElementById('appointmentForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent default form submission

            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const time = document.getElementById('time').value;
            const doctor = document.getElementById('doctor').value;

            let formData = { name, email, time, doctor };
            console.log("formData: ", JSON.stringify(formData));

            fetch('/appointments/save-appoinments', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json', // ✅ Tell the server this is JSON
                },
                body: JSON.stringify(formData),
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error("HTTP error " + response.status);
                }
                return response.text();
            })
            .then(data => {
                alert(data || 'Appointment saved successfully!');
                document.getElementById('appointmentForm').reset(); // Clear the form
            })
            .catch(error => {
                console.error('Error:', error);
                alert('An error occurred. Please try again.');
            });
        });

function getFormData($form) {
    var unindexed_array = $form.serializeArray();
    var indexed_array = {};
    $.map(unindexed_array, function (n, i) {
        indexed_array[n["name"]] = n["value"];
    });
    return indexed_array;
}

    </script>
</body>
</html>
