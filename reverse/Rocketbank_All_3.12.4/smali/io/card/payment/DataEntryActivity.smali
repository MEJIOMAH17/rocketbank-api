.class public final Lio/card/payment/DataEntryActivity;
.super Landroid/app/Activity;
.source "DataEntryActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataEntryActivity"


# instance fields
.field private activityTitleTextView:Landroid/widget/TextView;

.field private autoAcceptDone:Z

.field private cancelBtn:Landroid/widget/Button;

.field private capture:Lio/card/payment/CreditCard;

.field private cardView:Landroid/widget/ImageView;

.field private cardholderNameEdit:Landroid/widget/EditText;

.field private cardholderNameValidator:Lio/card/payment/Validator;

.field private cvvEdit:Landroid/widget/EditText;

.field private cvvValidator:Lio/card/payment/Validator;

.field private defaultTextColor:I

.field private doneBtn:Landroid/widget/Button;

.field private editTextIdCounter:I

.field private expiryEdit:Landroid/widget/EditText;

.field private expiryValidator:Lio/card/payment/Validator;

.field private labelLeftPadding:Ljava/lang/String;

.field private numberEdit:Landroid/widget/EditText;

.field private numberValidator:Lio/card/payment/Validator;

.field private postalCodeEdit:Landroid/widget/EditText;

.field private postalCodeValidator:Lio/card/payment/Validator;

.field private useApplicationTheme:Z

.field private viewIdCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    const/16 v0, 0x64

    .line 62
    iput v0, p0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    return-void
.end method

.method static synthetic access$000(Lio/card/payment/DataEntryActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->completed()V

    return-void
.end method

.method private advanceToNextEmptyField()Landroid/widget/EditText;
    .locals 3

    const/16 v0, 0x64

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 480
    invoke-virtual {p0, v0}, Lio/card/payment/DataEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private completed()V
    .locals 9

    .line 429
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lio/card/payment/CreditCard;

    invoke-direct {v0}, Lio/card/payment/CreditCard;-><init>()V

    iput-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    .line 432
    :cond_0
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    check-cast v1, Lio/card/payment/ExpiryValidator;

    iget v1, v1, Lio/card/payment/ExpiryValidator;->month:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 434
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    check-cast v1, Lio/card/payment/ExpiryValidator;

    iget v1, v1, Lio/card/payment/ExpiryValidator;->year:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 437
    :cond_1
    new-instance v0, Lio/card/payment/CreditCard;

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v4, v1, Lio/card/payment/CreditCard;->expiryMonth:I

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v5, v1, Lio/card/payment/CreditCard;->expiryYear:I

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    .line 438
    invoke-interface {v1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    .line 439
    invoke-interface {v1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lio/card/payment/CreditCard;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "io.card.payment.scanResult"

    .line 441
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "io.card.payment.capturedCardImage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "io.card.payment.capturedCardImage"

    .line 444
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "io.card.payment.capturedCardImage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 443
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 446
    :cond_2
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_CARD_INFO:I

    invoke-virtual {p0, v0, v1}, Lio/card/payment/DataEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->finish()V

    return-void
.end method

.method private validateAndEnableDoneButtonIfValid()V
    .locals 2

    .line 492
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    .line 493
    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    .line 494
    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 492
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->autoAcceptDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    .line 497
    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    .line 498
    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->completed()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 506
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const v1, -0xbbbbbc

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 507
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 508
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    .line 509
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 511
    :cond_0
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    .line 4573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_1

    .line 4574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 4576
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 512
    :goto_0
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto :goto_1

    .line 515
    :cond_2
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    .line 5573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_3

    .line 5574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 5576
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 518
    :goto_1
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_19

    .line 519
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object p1

    .line 520
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    check-cast v0, Lio/card/payment/FixedLengthValidator;

    .line 521
    invoke-virtual {p1}, Lio/card/payment/CardType;->cvvLength()I

    move-result p1

    .line 522
    iput p1, v0, Lio/card/payment/FixedLengthValidator;->requiredLength:I

    .line 523
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const-string p1, "1234"

    goto :goto_2

    :cond_4
    const-string p1, "123"

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 525
    :cond_5
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 526
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 527
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->isValid()Z

    move-result p1

    if-nez p1, :cond_6

    .line 528
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 530
    :cond_6
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    .line 6573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_7

    .line 6574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_3

    .line 6576
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 531
    :goto_3
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto/16 :goto_5

    .line 534
    :cond_8
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    .line 7573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_9

    .line 7574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 7576
    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 536
    :cond_a
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_f

    .line 537
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 538
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->isValid()Z

    move-result p1

    if-nez p1, :cond_b

    .line 539
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 541
    :cond_b
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    .line 8573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_c

    .line 8574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_4

    .line 8576
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 542
    :goto_4
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    goto/16 :goto_5

    .line 545
    :cond_d
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    .line 9573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_e

    .line 9574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 9576
    :cond_e
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_5

    .line 547
    :cond_f
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_14

    .line 548
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 549
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->isValid()Z

    move-result p1

    if-nez p1, :cond_10

    .line 550
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 552
    :cond_10
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    .line 10573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_11

    .line 10574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 10576
    :cond_11
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 555
    :cond_12
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    .line 11573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_13

    .line 11574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 11576
    :cond_13
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 557
    :cond_14
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_19

    .line 558
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 559
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    invoke-interface {p1}, Lio/card/payment/Validator;->isValid()Z

    move-result p1

    if-nez p1, :cond_15

    .line 560
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    sget v0, Lio/card/payment/ui/Appearance;->TEXT_COLOR_ERROR:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 562
    :cond_15
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    .line 12573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_16

    .line 12574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 12576
    :cond_16
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 565
    :cond_17
    iget-object p1, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    .line 13573
    iget-boolean v0, p0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-eqz v0, :cond_18

    .line 13574
    iget v0, p0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_5

    .line 13576
    :cond_18
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 569
    :cond_19
    :goto_5
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->validateAndEnableDoneButtonIfValid()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 452
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    invoke-virtual {p0, v0}, Lio/card/payment/DataEntryActivity;->setResult(I)V

    .line 453
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 90
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->onBackPressed()V

    return-void

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.keepApplicationTheme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    .line 99
    iget-boolean v1, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    invoke-static {v0, v1}, Lio/card/payment/ui/ActivityHelper;->setActivityTheme(Landroid/app/Activity;Z)V

    .line 101
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, v0, Lio/card/payment/DataEntryActivity;->defaultTextColor:I

    .line 1102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    const-string v1, "12dip"

    goto :goto_1

    :cond_2
    const-string v1, "2dip"

    .line 103
    :goto_1
    iput-object v1, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lio/card/payment/i18n/LocalizedStrings;->setLanguage(Landroid/content/Intent;)V

    const-string v1, "4dip"

    .line 108
    invoke-static {v1, v0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixelsInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 110
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    iget-boolean v6, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v6, :cond_3

    .line 112
    sget v6, Lio/card/payment/ui/Appearance;->DEFAULT_BACKGROUND_COLOR:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 114
    :cond_3
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    iget v7, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setId(I)V

    .line 116
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xa

    .line 118
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    invoke-virtual {v6, v10, v9, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 125
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "io.card.payment.scanResult"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lio/card/payment/CreditCard;

    iput-object v12, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "debug_autoAcceptResult"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lio/card/payment/DataEntryActivity;->autoAcceptDone:Z

    .line 134
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    const/4 v13, 0x6

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    .line 135
    new-instance v12, Lio/card/payment/CardNumberValidator;

    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget-object v2, v2, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-direct {v12, v2}, Lio/card/payment/CardNumberValidator;-><init>(Ljava/lang/String;)V

    iput-object v12, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    .line 137
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    invoke-virtual {v12, v3, v3, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 142
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    sget-object v15, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    invoke-virtual {v6, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->cardView:Landroid/widget/ImageView;

    const-string v12, "8dip"

    invoke-static {v2, v14, v14, v14, v12}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 152
    :cond_4
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    .line 153
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    iget-boolean v2, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v2, :cond_5

    .line 155
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    sget v12, Lio/card/payment/ui/Appearance;->PAY_BLUE_COLOR:I

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_5
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    const-string v12, "8dip"

    invoke-static {v2, v14, v14, v14, v12}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lio/card/payment/ui/ViewUtil;->setDimensions$17e143a3$5359dc9a(Landroid/view/View;)V

    .line 163
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v12, "4dip"

    const-string v15, "4dip"

    .line 165
    invoke-static {v2, v14, v12, v14, v15}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v15, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    invoke-static {v12, v15, v14, v14, v14}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v15, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    invoke-static {v15}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-boolean v15, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v15, :cond_6

    .line 171
    sget v15, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    :cond_6
    invoke-virtual {v2, v12, v8, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 175
    new-instance v12, Landroid/widget/EditText;

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    .line 176
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    iget v15, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v14, v15, 0x1

    iput v14, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setId(I)V

    .line 177
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 178
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 179
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1010040

    invoke-virtual {v12, v14, v15}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 181
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const-string v14, "1234 5678 1234 5678"

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 183
    iget-boolean v12, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v12, :cond_7

    .line 184
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const v14, -0x333334

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 187
    :cond_7
    new-instance v12, Lio/card/payment/CardNumberValidator;

    invoke-direct {v12}, Lio/card/payment/CardNumberValidator;-><init>()V

    iput-object v12, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    .line 188
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    iget-object v14, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    const/4 v14, 0x2

    new-array v15, v14, [Landroid/text/InputFilter;

    new-instance v14, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v14}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v14, v15, v3

    iget-object v14, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    aput-object v14, v15, v4

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 192
    iget-object v12, v0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v12, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 193
    invoke-virtual {v6, v2, v9, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 196
    :goto_2
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v14, "4dip"

    const-string v15, "4dip"

    const/4 v13, 0x0

    .line 199
    invoke-static {v2, v13, v14, v13, v15}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "io.card.payment.requireExpiry"

    invoke-virtual {v13, v14, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 203
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "io.card.payment.requireCVV"

    invoke-virtual {v14, v15, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 204
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v8, "io.card.payment.requirePostalCode"

    invoke-virtual {v15, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v13, :cond_e

    .line 207
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v5

    .line 208
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 210
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 213
    iget-boolean v9, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v9, :cond_8

    .line 214
    sget v9, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_8
    sget-object v9, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    invoke-static {v9}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v7, v9, v3, v3, v3}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    .line 219
    invoke-virtual {v15, v7, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 221
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    .line 222
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    iget v7, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setId(I)V

    .line 223
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 224
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 225
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x1010040

    invoke-virtual {v3, v7, v9}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 227
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 228
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    sget-object v7, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    invoke-static {v7}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 229
    iget-boolean v3, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v3, :cond_9

    .line 230
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    const v7, -0x333334

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 233
    :cond_9
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    if-eqz v3, :cond_a

    .line 234
    new-instance v3, Lio/card/payment/ExpiryValidator;

    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v7, v7, Lio/card/payment/CreditCard;->expiryMonth:I

    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    iget v9, v9, Lio/card/payment/CreditCard;->expiryYear:I

    invoke-direct {v3, v7, v9}, Lio/card/payment/ExpiryValidator;-><init>(II)V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    goto :goto_3

    .line 236
    :cond_a
    new-instance v3, Lio/card/payment/ExpiryValidator;

    invoke-direct {v3}, Lio/card/payment/ExpiryValidator;-><init>()V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    .line 238
    :goto_3
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v3}, Lio/card/payment/Validator;->hasFullLength()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 239
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v7}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_b
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    const/4 v7, 0x2

    new-array v9, v7, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/method/DateKeyListener;

    invoke-direct {v7}, Landroid/text/method/DateKeyListener;-><init>()V

    const/16 v18, 0x0

    aput-object v7, v9, v18

    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    aput-object v7, v9, v4

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 245
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    const/4 v7, -0x1

    const/4 v9, -0x2

    invoke-virtual {v15, v3, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 246
    invoke-virtual {v2, v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v14, :cond_d

    if-eqz v8, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const-string v3, "4dip"

    :goto_5
    const/4 v5, 0x0

    .line 247
    invoke-static {v15, v5, v5, v3, v5}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .line 250
    new-instance v3, Lio/card/payment/AlwaysValid;

    invoke-direct {v3}, Lio/card/payment/AlwaysValid;-><init>()V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    :goto_6
    if-eqz v14, :cond_14

    .line 254
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    iget-boolean v9, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v9, :cond_f

    .line 261
    sget v9, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    :cond_f
    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v7, v9, v15, v15, v15}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v9, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    invoke-static {v9}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, -0x2

    .line 266
    invoke-virtual {v3, v7, v9, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 268
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    .line 269
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    iget v9, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v15, v9, 0x1

    iput v15, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setId(I)V

    .line 270
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 271
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 272
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v15, 0x1010040

    invoke-virtual {v7, v9, v15}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 273
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 274
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const-string v9, "123"

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v7, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v7, :cond_10

    .line 276
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const v9, -0x333334

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_10
    const/4 v7, 0x4

    .line 280
    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->capture:Lio/card/payment/CreditCard;

    if-eqz v9, :cond_11

    .line 281
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->numberValidator:Lio/card/payment/Validator;

    invoke-interface {v7}, Lio/card/payment/Validator;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object v7

    .line 282
    invoke-virtual {v7}, Lio/card/payment/CardType;->cvvLength()I

    move-result v7

    .line 284
    :cond_11
    new-instance v9, Lio/card/payment/FixedLengthValidator;

    invoke-direct {v9, v7}, Lio/card/payment/FixedLengthValidator;-><init>(I)V

    iput-object v9, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    .line 285
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v9, 0x2

    new-array v15, v9, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v9}, Landroid/text/method/DigitsKeyListener;-><init>()V

    const/16 v18, 0x0

    aput-object v9, v15, v18

    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    aput-object v9, v15, v4

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 286
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    iget-object v9, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    const/4 v9, -0x1

    const/4 v15, -0x2

    invoke-virtual {v3, v7, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 290
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v13, :cond_12

    const-string v5, "4dip"

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    :goto_7
    if-eqz v8, :cond_13

    const-string v7, "4dip"

    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    const/4 v7, 0x0

    goto :goto_8

    .line 291
    :goto_9
    invoke-static {v3, v5, v9, v7, v9}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 294
    :cond_14
    new-instance v3, Lio/card/payment/AlwaysValid;

    invoke-direct {v3}, Lio/card/payment/AlwaysValid;-><init>()V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->cvvValidator:Lio/card/payment/Validator;

    :goto_a
    if-eqz v8, :cond_1a

    .line 298
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 299
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 301
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 304
    iget-boolean v8, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v8, :cond_15

    .line 305
    sget v8, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    :cond_15
    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v9, v9}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v8, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    invoke-static {v8}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x2

    .line 311
    invoke-virtual {v3, v7, v8, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "io.card.payment.restrictPostalCodeToNumericOnly"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 316
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    .line 317
    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    iget v9, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v15, v9, 0x1

    iput v15, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setId(I)V

    .line 318
    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 319
    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 320
    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v15, 0x1010040

    invoke-virtual {v8, v9, v15}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz v7, :cond_16

    .line 324
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_b

    .line 326
    :cond_16
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 328
    :goto_b
    iget-boolean v7, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v7, :cond_17

    .line 329
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    const v8, -0x333334

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 332
    :cond_17
    new-instance v7, Lio/card/payment/MaxLengthValidator;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Lio/card/payment/MaxLengthValidator;-><init>(I)V

    iput-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    .line 333
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    iget-object v8, v0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 336
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-virtual {v3, v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 338
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v13, :cond_19

    if-eqz v14, :cond_18

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    const/4 v14, 0x0

    goto :goto_d

    :cond_19
    :goto_c
    const-string v14, "4dip"

    const/4 v5, 0x0

    .line 339
    :goto_d
    invoke-static {v3, v14, v5, v5, v5}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 342
    :cond_1a
    new-instance v3, Lio/card/payment/AlwaysValid;

    invoke-direct {v3}, Lio/card/payment/AlwaysValid;-><init>()V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->postalCodeValidator:Lio/card/payment/Validator;

    .line 345
    :goto_e
    invoke-virtual {v6, v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "io.card.payment.requireCardholderName"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1595
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "4dip"

    const/4 v5, 0x0

    .line 1596
    invoke-static {v2, v5, v3, v5, v5}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1599
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1600
    iget-boolean v7, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v7, :cond_1b

    .line 1601
    sget v7, Lio/card/payment/ui/Appearance;->TEXT_COLOR_LABEL:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1603
    :cond_1b
    iget-object v7, v0, Lio/card/payment/DataEntryActivity;->labelLeftPadding:Ljava/lang/String;

    invoke-static {v3, v7, v5, v5, v5}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    sget-object v5, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    invoke-static {v5}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x2

    .line 1607
    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1609
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    .line 1610
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    iget v5, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lio/card/payment/DataEntryActivity;->editTextIdCounter:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setId(I)V

    .line 1611
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1612
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1613
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x1010040

    invoke-virtual {v3, v5, v7}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 1615
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1616
    iget-boolean v3, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v3, :cond_1c

    .line 1617
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    const v5, -0x333334

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1620
    :cond_1c
    new-instance v3, Lio/card/payment/MaxLengthValidator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5}, Lio/card/payment/MaxLengthValidator;-><init>(I)V

    iput-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    .line 1621
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1622
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1624
    iget-object v3, v0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-virtual {v2, v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1627
    invoke-virtual {v6, v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_f

    .line 1630
    :cond_1d
    new-instance v2, Lio/card/payment/AlwaysValid;

    invoke-direct {v2}, Lio/card/payment/AlwaysValid;-><init>()V

    iput-object v2, v0, Lio/card/payment/DataEntryActivity;->cardholderNameValidator:Lio/card/payment/Validator;

    .line 349
    :goto_f
    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "16dip"

    const-string v3, "20dip"

    const-string v5, "16dip"

    const-string v7, "20dip"

    .line 350
    invoke-static {v6, v2, v3, v5, v7}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 355
    iget v3, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lio/card/payment/DataEntryActivity;->viewIdCounter:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 356
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    .line 358
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x0

    .line 359
    invoke-virtual {v2, v7, v1, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 360
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 362
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    move-object/from16 v7, v17

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    .line 365
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 368
    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    sget-object v6, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    invoke-static {v6}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    new-instance v6, Lio/card/payment/DataEntryActivity$1;

    invoke-direct {v6, v0}, Lio/card/payment/DataEntryActivity$1;-><init>(Lio/card/payment/DataEntryActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    iget-object v5, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    iget-boolean v5, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    invoke-static {v1, v4, v0, v5}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/widget/Button;ZLandroid/content/Context;Z)V

    .line 380
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const-string v5, "5dip"

    const-string v6, "5dip"

    const/4 v7, 0x0

    invoke-static {v1, v5, v7, v6, v7}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    const-string v5, "8dip"

    const-string v6, "8dip"

    const-string v7, "8dip"

    const-string v8, "8dip"

    invoke-static {v1, v5, v6, v7, v8}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v1, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    const/high16 v5, 0x41800000    # 16.0f

    if-nez v1, :cond_1e

    .line 383
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->doneBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 386
    :cond_1e
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    .line 388
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 390
    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    sget-object v7, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    invoke-static {v7}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v7, Lio/card/payment/DataEntryActivity$2;

    invoke-direct {v7, v0}, Lio/card/payment/DataEntryActivity$2;-><init>(Lio/card/payment/DataEntryActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v6, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    iget-boolean v6, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v6}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/widget/Button;ZLandroid/content/Context;Z)V

    .line 401
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const-string v6, "5dip"

    const-string v7, "5dip"

    const/4 v8, 0x0

    invoke-static {v1, v6, v8, v7, v8}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    const-string v6, "4dip"

    const-string v7, "8dip"

    const-string v9, "8dip"

    const-string v10, "8dip"

    invoke-static {v1, v6, v7, v9, v10}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-boolean v1, v0, Lio/card/payment/DataEntryActivity;->useApplicationTheme:Z

    if-nez v1, :cond_1f

    .line 404
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextSize(F)V

    :cond_1f
    move-object/from16 v1, v16

    .line 406
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2093
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_20

    move v2, v4

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    :goto_10
    const/16 v3, 0x8

    if-eqz v2, :cond_21

    .line 2029
    invoke-virtual {v0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 410
    :cond_21
    invoke-virtual {v0, v1}, Lio/card/payment/DataEntryActivity;->setContentView(Landroid/view/View;)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.intentSenderIsPayPal"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 416
    invoke-virtual/range {p0 .. p0}, Lio/card/payment/DataEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/card/payment/R$drawable;->cio_ic_paypal_monogram:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_11

    :cond_22
    move-object v14, v8

    :goto_11
    if-eqz v13, :cond_23

    .line 420
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v1}, Lio/card/payment/Validator;->isValid()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 421
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/card/payment/DataEntryActivity;->afterTextChanged(Landroid/text/Editable;)V

    .line 424
    :cond_23
    iget-object v1, v0, Lio/card/payment/DataEntryActivity;->activityTitleTextView:Landroid/widget/TextView;

    sget-object v2, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    .line 425
    invoke-static {v2}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "card.io - "

    .line 3049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3093
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_24

    move v5, v4

    goto :goto_12

    :cond_24
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_28

    .line 4064
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_25

    goto :goto_13

    :cond_25
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_28

    .line 4069
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 4071
    sget-object v5, Lio/card/payment/ui/Appearance;->ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4072
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4076
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "action_bar_title"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4077
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_26

    const/4 v5, -0x1

    .line 4079
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_26
    const/4 v2, 0x0

    .line 4082
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz v14, :cond_27

    .line 4083
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_27

    .line 4098
    invoke-virtual {v4, v14}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    .line 4088
    :cond_27
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :goto_14
    if-eqz v1, :cond_29

    .line 3053
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_28
    if-eqz v1, :cond_29

    .line 3057
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 460
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 4127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 4130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 463
    :cond_0
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->validateAndEnableDoneButtonIfValid()V

    .line 465
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryValidator:Lio/card/payment/Validator;

    invoke-interface {v0}, Lio/card/payment/Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0}, Lio/card/payment/DataEntryActivity;->advanceToNextEmptyField()Landroid/widget/EditText;

    .line 471
    :goto_0
    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->numberEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->expiryEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cvvEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->postalCodeEdit:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/card/payment/DataEntryActivity;->cardholderNameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 472
    :cond_2
    invoke-virtual {p0}, Lio/card/payment/DataEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
