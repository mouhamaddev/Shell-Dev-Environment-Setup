#!/bin/bash
#chmod +x file.sh

# Check if a parameter is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a parameter."
    exit 1
fi

# Assign the first parameter to a variable
input=$1

# Check the value of the variable
if [ "$input" == "frontend" ]; then
    echo "Starting frontend development environment..."
    gnome-terminal --working-directory=Documents/GitHub/Ecommerce-Operations/frontend/Ecommerce-Operations --command="bash -c 'ng serve; exec bash'"
    gnome-terminal --working-directory=Documents/GitHub/Ecommerce-Operations/backend --command="bash -c 'source venv/bin/activate; cd ecommerce_operations; python manage.py runserver; exec bash'"
    
    # Open vs code
    code Documents/GitHub/Ecommerce-Operations/frontend/Ecommerce-Operations/src/app
    
elif [ "$input" == "backend" ]; then
    echo "Starting backend development environment..."
    gnome-terminal --working-directory=Documents/GitHub/Ecommerce-Operations/frontend/Ecommerce-Operations --command="bash -c 'ng serve; exec bash'"
    gnome-terminal --working-directory=Documents/GitHub/Ecommerce-Operations/backend --command="bash -c 'source venv/bin/activate; cd ecommerce_operations; python manage.py runserver; exec bash'"
    
    # Open vs code
    code Documents/GitHub/Ecommerce-Operations/backend/ecommerce_operations
    
else
    echo "Please provide a valid parameter."
fi

