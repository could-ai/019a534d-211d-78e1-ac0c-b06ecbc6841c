import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _credentialController = TextEditingController();
  String _selectedRole = 'Parent';

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthService>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Emmanuel Wallet', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 32),
            DropdownButtonFormField<String>(
              value: _selectedRole,
              items: ['Parent', 'Student', 'Admin'].map((role) => DropdownMenuItem(value: role, child: Text(role))).toList(),
              onChanged: (role) => setState(() => _selectedRole = role!),
              decoration: const InputDecoration(labelText: 'Role'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _credentialController,
              decoration: InputDecoration(
                labelText: _selectedRole == 'Parent' ? 'Email' : _selectedRole == 'Student' ? 'Student ID' : 'Username',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Mock login flow
                await auth.login(_selectedRole, _credentialController.text);
                if (auth.isAuthenticated) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
