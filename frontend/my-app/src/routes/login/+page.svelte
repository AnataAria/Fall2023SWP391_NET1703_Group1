<form >
    <h1>Sign Up</h1>
    <label for="name">Name</label>
    <input type="text" id="name" name="name"  required />
    <label for="email">Email</label>
    <input type="email" id="email" name="email" required />
    <label for="password">Password</label>
    <input type="password" id="password" name="password"  required />
    <label for="confirm-password">Confirm Password</label>
    <input
        type="password"
        id="confirm-password"
        name="confirm-password"
        
        required
    />
    <input type="submit" value="Sign Up" />
    <a href="http://localhost:3000/auth/google">Login with Google</a>
</form>

<style>
    form {
        display: inline-block;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-top: 50px;
    }

    label {
        display: block;
        font-size: 18px;
        margin-bottom: 10px;
        text-align: left;
    }

    input[type='text'],
    input[type='email'],
    input[type='password'] {
        display: block;
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border-radius: 5px;
        border: none;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    input[type='submit'] {
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }

    input[type='submit']:hover {
        background-color: #2980b9;
    }
</style>


