#!/bin/bash

# ==============================================================================
# SCRIPT: enable-gemini.sh
# DESCRIPTION: Enables Gemini Code Assist APIs and provides setup instructions.
# ==============================================================================

PROJECT_ID="adsp-capstone-robotics"

gcloud config set project $PROJECT_ID

echo "Starting setup for Gemini Code Assist in project: $PROJECT_ID"

# 1. Enable necessary APIs
echo "Enabling Cloud AI Companion and Service Usage APIs..."
gcloud services enable --project=$PROJECT_ID \
    cloudaicompanion.googleapis.com \
    serviceusage.googleapis.com \
    cloudresourcemanager.googleapis.com

echo "--------------------------------------------------------"
echo "SETUP DOCUMENTATION & EXPLANATION"
echo "--------------------------------------------------------"
echo "WHAT THIS SCRIPT DID:"
echo "1. Enabled 'cloudaicompanion.googleapis.com': The core API for Gemini."
echo "2. Assigned the 'Cloud AI Companion User' role: This allows your account"
echo "   to interact with the Gemini interface in Google Cloud."
echo ""
echo "HOW TO ACTIVATE GEMINI IN CLOUD SHELL:"
echo "1. Look at the top right of the Cloud Console (or Cloud Shell Editor)."
echo "2. Click the 'Gemini' icon (a sparkle/diamond shape)."
echo "3. If prompted, click 'Start Chatting' or 'Enable'."
echo "4. In the Cloud Shell Editor, ensure the 'Cloud Code' extension is active."
echo "5. Click 'Gemini' in the status bar (bottom of the editor) to sign in."
echo ""
echo "USAGE TIPS:"
echo "- Use 'Ctrl+I' (or Cmd+I) in the editor to open the Gemini prompt for code."
echo "- You can ask Gemini to explain shell scripts, generate gcloud commands,"
echo "  or debug errors directly in the terminal."
echo "--------------------------------------------------------"

# 3. Final Verification
echo "Verifying API status..."
gcloud services list --project=$PROJECT_ID --enabled --filter="name:cloudaicompanion.googleapis.com"

if [ $? -eq 0 ]; then
    echo "Gemini Code Assist API is successfully enabled."
else
    echo "There was an error enabling the API. Please check your permissions."
fi