import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseFormScreen extends StatefulWidget {
  final void Function(String, double, double, DateTime, String, String, String)
      onSubmit;

  ExpenseFormScreen(this.onSubmit);

  @override
  _ExpenseFormScreenState createState() => _ExpenseFormScreenState();
}

class _ExpenseFormScreenState extends State<ExpenseFormScreen> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  final _expectedValueController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  final _recurrenceController = TextEditingController();
  final _paymentMethodController = TextEditingController();
  final _creditCardNameController = TextEditingController();

  _submitForm() {
    final title = _titleController.text;
    final value = double.tryParse(_valueController.text) ?? 0;
    final expectedValue = double.tryParse(_expectedValueController.text) ?? 0;
    final recurrence = _recurrenceController.text;
    final paymentMethod = _paymentMethodController.text;
    final creditCardName = _creditCardNameController.text;

    if (title.isEmpty || value <= 0 || _selectedDate == null) {
      return;
    }

    widget.onSubmit(
      title,
      value,
      expectedValue,
      _selectedDate,
      recurrence,
      paymentMethod,
      creditCardName,
    );
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year.toInt()),
      lastDate: DateTime(DateTime.now().year.toInt() + 2),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Expense'),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
              bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _titleController,
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                TextField(
                  controller: _valueController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Value (\$)',
                  ),
                ),
                TextField(
                  controller: _expectedValueController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Expected Value (\$)',
                  ),
                ),
                TextField(
                  controller: _recurrenceController,
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Recurrence',
                  ),
                ),
                TextField(
                  controller: _paymentMethodController,
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Payment Method',
                  ),
                ),
                TextField(
                  controller: _creditCardNameController,
                  onSubmitted: (_) => _submitForm(),
                  decoration: const InputDecoration(
                    labelText: 'Credit Card Name',
                  ),
                ),
                Container(
                  height: 70,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          _selectedDate == null
                              ? 'Nenhuma data selecionada!'
                              : 'Data Selecionada: ${DateFormat('d/M/y').format(_selectedDate)}',
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          'Selecionar Data',
                        ),
                        onPressed: _showDatePicker,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'Nova Transação',
                        //   style: Theme.of(context).textTheme.button,
                      ),
                      onPressed: _submitForm,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
