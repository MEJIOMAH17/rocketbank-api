.class public Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
.super Ljava/lang/Object;
.source "TransfersModelUrFiz.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/TransfersModelUrFiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Remittance"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bank_name:Ljava/lang/String;

.field private bik:Ljava/lang/String;

.field private corr_bank:Ljava/lang/String;

.field private corr_number:Ljava/lang/String;

.field private icon_url:Ljava/lang/String;

.field private inn:Ljava/lang/String;

.field private isGkh:Z

.field private kpp:Ljava/lang/String;

.field private linked_account:Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

.field private nds:Ljava/lang/String;

.field private purpose:Ljava/lang/String;

.field private recipient_name:Ljava/lang/String;

.field private small_icon_url:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->small_icon_url:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->icon_url:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bik:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_number:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->inn:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->kpp:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->purpose:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->recipient_name:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bank_name:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->status:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->nds:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_bank:Ljava/lang/String;

    .line 232
    const-class v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    iput-object v1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->linked_account:Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBank_name()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bank_name:Ljava/lang/String;

    return-object v0
.end method

.method public getBik()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bik:Ljava/lang/String;

    return-object v0
.end method

.method public getCorr_bank()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_bank:Ljava/lang/String;

    return-object v0
.end method

.method public getCorr_number()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_url()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getInn()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public getKpp()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->kpp:Ljava/lang/String;

    return-object v0
.end method

.method public getLinked_account()Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;
    .locals 1

    .line 206
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->linked_account:Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    return-object v0
.end method

.method public getNds()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->nds:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpose()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->purpose:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient_name()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->recipient_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_icon_url()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->small_icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isGkh()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    return v0
.end method

.method public setBank_name(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bank_name:Ljava/lang/String;

    return-void
.end method

.method public setBik(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bik:Ljava/lang/String;

    return-void
.end method

.method public setCorr_bank(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_bank:Ljava/lang/String;

    return-void
.end method

.method public setCorr_number(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_number:Ljava/lang/String;

    return-void
.end method

.method public setGkh(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    return-void
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->icon_url:Ljava/lang/String;

    return-void
.end method

.method public setInn(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->inn:Ljava/lang/String;

    return-void
.end method

.method public setKpp(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->kpp:Ljava/lang/String;

    return-void
.end method

.method public setLinked_account(Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->linked_account:Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    return-void
.end method

.method public setNds(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->nds:Ljava/lang/String;

    return-void
.end method

.method public setPurpose(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->purpose:Ljava/lang/String;

    return-void
.end method

.method public setRecipient_name(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->recipient_name:Ljava/lang/String;

    return-void
.end method

.method public setSmall_icon_url(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->small_icon_url:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->status:Ljava/lang/String;

    return-void
.end method

.method public toRemittanceOutgoing(Lru/rocketbank/core/model/transfers/bank/RecipientType;)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
    .locals 2

    .line 237
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;)V

    .line 238
    sget-object v1, Lru/rocketbank/core/network/model/TransfersModelUrFiz$2;->$SwitchMap$ru$rocketbank$core$model$transfers$bank$RecipientType:[I

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RecipientType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    sget-object p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_1
    sget-object p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->corporate:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->individual:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->small_icon_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->icon_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bik:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->inn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->kpp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->purpose:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->recipient_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->bank_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->nds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->corr_bank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->linked_account:Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-boolean p2, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->isGkh:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
