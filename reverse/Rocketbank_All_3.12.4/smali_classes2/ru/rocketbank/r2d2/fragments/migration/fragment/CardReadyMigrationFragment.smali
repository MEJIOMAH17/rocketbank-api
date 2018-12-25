.class public Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
.source "CardReadyMigrationFragment.java"


# instance fields
.field editTextAddress:Landroid/widget/EditText;

.field spinnerCity:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onButtonClicked()V
    .locals 5

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->spinnerCity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/migration/Migration$City;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1102b8

    invoke-static {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->editTextAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1102b5

    invoke-static {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_2
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->editTextAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    :cond_4
    sget-boolean v1, Lru/rocketbank/r2d2/activities/MigrationActivity;->DEMO:Z

    if-eqz v1, :cond_5

    .line 70
    new-instance v0, Lru/rocketbank/core/model/migration/Migration;

    sget-object v1, Lru/rocketbank/core/model/migration/Migration$Status;->delivering:Lru/rocketbank/core/model/migration/Migration$Status;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/migration/Migration;-><init>(Lru/rocketbank/core/model/migration/Migration$Status;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->finishStep(Lru/rocketbank/core/model/migration/Migration;)V

    return-void

    .line 73
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/migration/Migration$City;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lru/rocketbank/core/network/api/MigrationApi;->scheduleDelivery(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09008c

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090347

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->spinnerCity:Landroid/widget/Spinner;

    const p2, 0x7f09014a

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->editTextAddress:Landroid/widget/EditText;

    .line 44
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->getMigration()Lru/rocketbank/core/model/migration/Migration;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/migration/Migration;->getCities()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0c01b4

    invoke-direct {p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->spinnerCity:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
