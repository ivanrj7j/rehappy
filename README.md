# RehaPPy - Hack-A-Addict Project

## Overview

RehaPPy is a mobile application developed for the "Hack-A-Addict" hackathon, designed to support addiction recovery, particularly among young people. It serves as a community management and progress tracking tool for both rehab professionals and their patients. RehaPPy aims to foster a sense of community and provide accessible, engaging support during the recovery journey.

## Core Features

*   **Community Messaging:** Real-time chat functionality to connect patients and professionals, allowing for peer support and therapist guidance.
*   **Progress Tracking:** A streak counter to keep track of continuous progress in recovery.
*   **Task System:** Users can highlight specific messages using the hashtag `#task` to identify and manage tasks within the community chat.
*   **User Authentication:** Secure login and signup features.

## Problem Statement

Addiction recovery can be a challenging and isolating journey, especially for young people. Lack of peer support and stigma can hinder progress and lead to relapses. RehaPPy aims to address this by providing a supportive and engaging platform that connects individuals in recovery with each other and their support network.

## Value Proposition

*   **For Rehab Professionals:** RehaPPy offers a centralized platform to monitor patients, manage groups, track progress, and communicate more effectively.
*   **For Patients:** The app creates a supportive peer environment, allows them to track personal milestones, and offers access to resources within a mobile app.

## Use Cases

*   **Rehab Professional:** Creates and manages patient groups, monitors activity and progress, and provides direct support through messages and content.
*   **Patient:** Joins community groups, engages in peer support, shares daily progress, tracks streaks, receives encouragement, and can use the task system using the hashtag `#task` to keep track of daily assignments.
* **Task system**: When a patient uses the hashtag #task followed by any string, then that message gets highlighted using a green box, which is to indicate that is a task.
* **Streak**: When a patient uses the hashtag #streak, the app stores it internally, in the home page there is a counter that counts the streak. They can update their streak by adding it or stopping it in the home page.

## Technology Stack

*   **Backend:**
    *   Flask (Python)
    *   MongoDB (Database)
    *   SocketIO (Real-time communication)
*   **Frontend:**
    *   Flutter (Cross-platform mobile development)

## Development Roadmap

1.  **Backend Development:** Setting up the server, database, and real-time messaging capabilities.
2.  **Frontend Development:** Creating the user interface, including login/signup, community chat, and progress tracking screens.
3.  **Integration:** Combining the backend and frontend components.
4. **User testing and Future development**

## UI Overview

*   **Login/Signup:** Simple forms for user authentication.
*   **Community Page:** Chat-like interface with user info, timestamps, and message history. A task system was implemented using hashtags `#task`.
*   **Home Page:** Displays the streak counter and allows users to update their progress, a horizontal bar containing recent communities the user has interacted with.

## Team

*   Ivan Raphel Jaison
*   Ameesha Prasanth
*   Muhammed Sahil Subair

## Future Plans

No specific future plans beyond this hackathon.

## Demo

During the hackathon, we developed a functional prototype of RehaPPy. Users can log in, join groups, engage in real-time chat, set and track streaks, and see highlighted tasks using the `#task` command.