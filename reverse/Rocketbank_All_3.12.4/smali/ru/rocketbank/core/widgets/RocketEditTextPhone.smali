.class public Lru/rocketbank/core/widgets/RocketEditTextPhone;
.super Lru/rocketbank/core/widgets/RocketEditText;
.source "RocketEditTextPhone.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private _numberIndexToRemove:Ljava/lang/Integer;

.field private _selfFormat:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_selfFormat:Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p0, p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private getPhoneNumber()Ljava/lang/StringBuilder;
    .locals 5

    .line 103
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 107
    :goto_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 108
    invoke-interface {v0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0xf

    if-gt v0, v2, :cond_2

    return-object v1

    .line 118
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 39
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_selfFormat:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_selfFormat:Z

    .line 45
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhoneNumber()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 48
    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 54
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x3

    if-ge v4, v5, :cond_6

    if-nez v4, :cond_2

    const/16 v5, 0x28

    .line 56
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ne v4, v8, :cond_3

    const-string v5, ") "

    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eq v4, v7, :cond_5

    if-ne v4, v6, :cond_4

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    :goto_1
    const-string v5, "-"

    .line 62
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 72
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 1083
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    const/4 v2, 0x5

    const/4 v4, 0x4

    if-eqz v1, :cond_a

    .line 1084
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_7

    .line 1085
    invoke-virtual {p0, v8}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V

    goto :goto_3

    .line 1086
    :cond_7
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_8

    .line 1087
    invoke-virtual {p0, v4}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V

    goto :goto_3

    .line 1088
    :cond_8
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 1089
    invoke-virtual {p0, v6}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V

    goto :goto_3

    .line 1090
    :cond_9
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_a

    const/16 v1, 0xb

    .line 1091
    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V

    .line 1095
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getSelectionStart()I

    move-result v1

    if-nez v1, :cond_b

    if-lez p1, :cond_b

    .line 1096
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V

    goto :goto_4

    .line 1097
    :cond_b
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getSelectionStart()I

    move-result p1

    if-eq p1, v2, :cond_c

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getSelectionStart()I

    move-result p1

    if-ne p1, v7, :cond_d

    .line 1098
    :cond_c
    invoke-virtual {p0, v4}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 77
    :cond_d
    :goto_4
    iput-boolean v3, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_selfFormat:Z

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p4, :cond_3

    const/4 p1, 0x1

    if-ne p3, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x9

    if-ne p2, p3, :cond_1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    return-void

    :cond_1
    const/16 p1, 0xc

    if-ne p2, p1, :cond_3

    const/4 p1, 0x7

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketEditTextPhone;->_numberIndexToRemove:Ljava/lang/Integer;

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-direct {p0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhoneNumber()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
