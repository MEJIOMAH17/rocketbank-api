.class public Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;
.super Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;
.source "FillFormRegistrationFragment.java"


# static fields
.field public static final TIMEOUT:I = 0x2


# instance fields
.field private checkEmailSubscription:Lrx/Subscription;

.field private checkNameSubscription:Lrx/Subscription;

.field private checkSecretWordSubscription:Lrx/Subscription;

.field editTextEmail:Landroid/widget/EditText;

.field editTextName:Landroid/widget/EditText;

.field editTextSecretWord:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmail(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onCheckError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkName(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWord(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private checkEmail(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    const v1, 0x7f110244

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v0

    .line 152
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    .line 145
    :cond_2
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    const v1, 0x7f110183

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v0
.end method

.method private checkName(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "^[a-zA-Z ]+$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    const v1, 0x7f110243

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v0

    .line 130
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    .line 123
    :cond_2
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    const v1, 0x7f110184

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v0
.end method

.method private checkSecretWord(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_1
    :goto_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    const v0, 0x7f110187

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method

.method private onCheckError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    .line 204
    invoke-static {}, Lru/rocketbank/r2d2/RocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11043b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->leadFormFill()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00f6

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090152

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    const p2, 0x7f090156

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    const p2, 0x7f090157

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    const p2, 0x7f09008c

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onNextButtonClick()V
    .locals 5

    .line 161
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    iget-object v2, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    .line 166
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    .line 167
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 171
    :cond_2
    new-instance v0, Lru/rocketbank/core/model/RegistrationForm$Form;

    invoke-direct {v0}, Lru/rocketbank/core/model/RegistrationForm$Form;-><init>()V

    .line 172
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/RegistrationForm$Form;->setName_in_latin(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/RegistrationForm$Form;->setCodeword(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/RegistrationForm$Form;->setEmail(Ljava/lang/String;)V

    .line 175
    new-instance v1, Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getPassportPageId()I

    move-result v2

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getRegistrationPageId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;-><init>(II)V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/RegistrationForm$Form;->setDocument_photos(Lru/rocketbank/core/model/RegistrationForm$DocumentPhotos;)V

    .line 177
    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-direct {v1}, Lru/rocketbank/r2d2/registration/RegistrationStep;-><init>()V

    .line 178
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStatusResponseData(Lru/rocketbank/core/model/StatusResponseData;)V

    .line 179
    sget-object v2, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ISSUING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/registration/RegistrationStep;->setStep(Lru/rocketbank/r2d2/registration/RegistrationStep$Step;)V

    .line 180
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getApi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/network/api/RegistrationApi;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getModel()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/registration/RegistrationStep;->getStatusResponseData()Lru/rocketbank/core/model/StatusResponseData;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/core/model/StatusResponseData;->getToken()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/rocketbank/core/model/RegistrationForm;

    invoke-direct {v4, v0}, Lru/rocketbank/core/model/RegistrationForm;-><init>(Lru/rocketbank/core/model/RegistrationForm$Form;)V

    invoke-interface {v2, v3, v4}, Lru/rocketbank/core/network/api/RegistrationApi;->registration(Ljava/lang/String;Lru/rocketbank/core/model/RegistrationForm;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;

    invoke-direct {v2, p0, v1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$8;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkNameSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkNameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkNameSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 193
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmailSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmailSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmailSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 196
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWordSubscription:Lrx/Subscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWordSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWordSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 199
    :cond_2
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onPause()V

    return-void
.end method

.method protected bridge synthetic onRequestCompleted(Landroid/os/Parcelable;)V
    .locals 0

    .line 32
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected onRequestCompleted(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->hideSpinner()V

    if-nez p1, :cond_0

    const p1, 0x7f11012b

    .line 212
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->showSnack(I)V

    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->leadFormComplete()V

    .line 218
    invoke-virtual {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->leadFormCompleteFacebook()V

    .line 221
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->finishStep(Landroid/os/Parcelable;)V

    .line 222
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 73
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RegistrationFromFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextEmail:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    .line 76
    invoke-virtual {v0, v3, v4, v2}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 77
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    new-instance v5, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$3;

    invoke-direct {v5, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$3;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    .line 78
    invoke-virtual {v0, v2, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkEmailSubscription:Lrx/Subscription;

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    invoke-virtual {v0, v3, v4, v2}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 92
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$4;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$4;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    new-instance v5, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$5;

    invoke-direct {v5, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$5;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    .line 93
    invoke-virtual {v0, v2, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkNameSubscription:Lrx/Subscription;

    .line 104
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->editTextSecretWord:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Lrx/Observable;->skip(I)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    invoke-virtual {v0, v3, v4, v1}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$6;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$6;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    new-instance v2, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$7;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment$7;-><init>(Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;)V

    .line 108
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->checkSecretWordSubscription:Lrx/Subscription;

    return-void
.end method

.method protected bridge synthetic updateModel(Landroid/os/Parcelable;)V
    .locals 0

    .line 32
    check-cast p1, Lru/rocketbank/r2d2/registration/RegistrationStep;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/FillFormRegistrationFragment;->updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V

    return-void
.end method

.method protected updateModel(Lru/rocketbank/r2d2/registration/RegistrationStep;)V
    .locals 0

    return-void
.end method
