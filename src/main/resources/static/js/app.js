document.addEventListener('DOMContentLoaded', () => {
    const dialog = document.getElementById('deleteDialog');
    if (!dialog) return;

    const nameEl = dialog.querySelector('#deleteName');
    const confirmBtn = dialog.querySelector('[data-dialog-confirm]');
    const cancelBtn = dialog.querySelector('[data-dialog-cancel]');
    let pendingForm = null;

    document.querySelectorAll('form.js-confirm-delete').forEach((form) => {
        form.addEventListener('submit', (event) => {
            if (typeof dialog.showModal !== 'function') {
                if (!confirm('Chcete naozaj vymazať tohto zamestnanca?')) event.preventDefault();
                return;
            }
            event.preventDefault();
            pendingForm = form;
            nameEl.textContent = form.dataset.name || 'tohto zamestnanca';
            dialog.showModal();
        });
    });

    confirmBtn.addEventListener('click', () => {
        if (pendingForm) {
            confirmBtn.disabled = true;
            pendingForm.submit();
        }
    });

    cancelBtn.addEventListener('click', () => dialog.close());

    dialog.addEventListener('click', (event) => {
        if (event.target === dialog) dialog.close();
    });

    dialog.addEventListener('close', () => {
        pendingForm = null;
        confirmBtn.disabled = false;
    });
});
