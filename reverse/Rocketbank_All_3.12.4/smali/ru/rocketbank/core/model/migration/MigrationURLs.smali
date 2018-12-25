.class public Lru/rocketbank/core/model/migration/MigrationURLs;
.super Ljava/lang/Object;
.source "MigrationURLs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/migration/MigrationURLs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private compare_tariff_url:Ljava/lang/String;

.field private faq_url:Ljava/lang/String;

.field private old_card_fate_url:Ljava/lang/String;

.field private rules_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lru/rocketbank/core/model/migration/MigrationURLs$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/migration/MigrationURLs$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/migration/MigrationURLs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->compare_tariff_url:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->faq_url:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->old_card_fate_url:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->rules_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCompareTariffUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->compare_tariff_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->faq_url:Ljava/lang/String;

    return-object v0
.end method

.method public getOldCardFateUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->old_card_fate_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRulesUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->rules_url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget-object p2, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->compare_tariff_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->faq_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->old_card_fate_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lru/rocketbank/core/model/migration/MigrationURLs;->rules_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
