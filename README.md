## Purpose
The main objective is to study and suggest the use of all these concepts to promote real and human inclusion. Using technology to enable people with disabilities to use technology is our duty, and using tools to make it easy can help convince everyone to promote inclusion.

## AccessibleBeagle
 This project was intended to show how is easy to generate differents acessible apps from the same version, using [Server-Driven UI](https://www.zup.com.br/zupcast/5-server-driven-ui) and [Circles](https://docs.charlescd.io/reference/circles) concepts.
 
### Server-Driven UI
To facilitate the use of the Server-Driven concept, I used the open source framework [Beagle](https://usebeagle.io). Beagle is an open source cross-platform development framework based on the server-oriented UI implementation paradigm, the main gain that Beagle offers is allowing teams to make layout and data changes directly in native mobile or web applications. , changing the code only on the backend. In this way, it is possible to create, test and update components of native applications quickly without having to approve these changes in the store (App Store or Play Store). All logical implementations, back-end screen creation, serialization and deserialization are made easy with this framework. To learn more about the tool, I recommend that you visit the [documentation](https://docs.usebeagle.io).

### Backend For Frontends
An important point to implement the server-oriented UI is to create a microservice that provides all the front-end logic, known as [BFF](https://samnewman.io/patterns/architectural/bff/), it is the server that makes it possible to send JSON objects to be rendered and, consequently, viewed on the frontend. This component allows screens and business rules to be written only once and then to be rendered natively on each platform where Beagle is present. The consumption of the APIs that provide the data for the application before executed by the fronts, is now the responsibility of BFF. All logical implementations and declarative screens implementations are made easy with this framework.

### Social Circles
 The deployment in circles of users on Kubernetes clusters become possible through [CharlesCD](https://charlescd.io),that is an open source tool that makes deployments more agile, continuous and safe, which allows development teams to perform hypothesis validations with a specific group of users, simultaneously. This kind of deploy makes it possible to create a segment with your clients' specific characteristics and, at the same time, submit several versions of the same application to test this circle of users. Circles indicate clients segmentation and also support the version management created for a specific audience.
Once the right people are chosen to have access to your release associated to a circle, Charles will generate a series of business or performance metrics. This information will give you better hypothesis results or even a better view on a feature in analysis and that will enable more assertive tests.

### Requirements
#### iOS
* Xcode 11.5
* Swift 5.1
* iOS 13.1
#### Backend
* IntelliJ IDEA 11.0.8
* JDK 8+ language (Kotlin 1.3+ is recommended)
* Maven 3+
* Jackson 2+
