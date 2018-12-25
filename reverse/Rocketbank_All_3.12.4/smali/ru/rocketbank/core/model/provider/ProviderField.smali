.class public Lru/rocketbank/core/model/provider/ProviderField;
.super Ljava/lang/Object;
.source "ProviderField.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATETIME:Ljava/lang/String; = "datetime"

.field public static final NUMBERS:Ljava/lang/String; = "numbers"

.field public static final NUMBERSDOT:Ljava/lang/String; = "numbersdot"

.field public static final PAYMENTDATE:Ljava/lang/String; = "paymentdate"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final SHORTDATE:Ljava/lang/String; = "shortdate"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private date_format:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private field_kind:Ljava/lang/String;

.field private keyboard_kind:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private mandatory:Z

.field private name:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private placeholder:Ljava/lang/String;

.field private regexp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lru/rocketbank/core/model/provider/ProviderField$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/provider/ProviderField$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/provider/ProviderField;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->name:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->regexp:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->mandatory:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->date_format:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->label:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->keyboard_kind:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->field_kind:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->pattern:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->detail:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->placeholder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate_format()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->date_format:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getField_kind()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->field_kind:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboard_kind()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->keyboard_kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholder()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->placeholder:Ljava/lang/String;

    return-object v0
.end method

.method public getRegexp()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->regexp:Ljava/lang/String;

    return-object v0
.end method

.method public isMandatory()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lru/rocketbank/core/model/provider/ProviderField;->mandatory:Z

    return v0
.end method

.method public setDate_format(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->date_format:Ljava/lang/String;

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->detail:Ljava/lang/String;

    return-void
.end method

.method public setField_kind(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->field_kind:Ljava/lang/String;

    return-void
.end method

.method public setKeyboard_kind(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->keyboard_kind:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->label:Ljava/lang/String;

    return-void
.end method

.method public setMandatory(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->mandatory:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->name:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->placeholder:Ljava/lang/String;

    return-void
.end method

.method public setRegexp(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/core/model/provider/ProviderField;->regexp:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 128
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->regexp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->mandatory:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->date_format:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->keyboard_kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->field_kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->pattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->detail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lru/rocketbank/core/model/provider/ProviderField;->placeholder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
