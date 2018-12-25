.class public final Lru/rocketbank/core/model/UserModel;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/UserModel$Rates;,
        Lru/rocketbank/core/model/UserModel$Info;,
        Lru/rocketbank/core/model/UserModel$Gender;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/UserModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accounts:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AccountModel;",
            ">;"
        }
    .end annotation
.end field

.field private atm_kinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private atmsHash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "atms_hash"
    .end annotation
.end field

.field private availableAccounts:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "available_accounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AvailableAccount;",
            ">;"
        }
    .end annotation
.end field

.field private availableCards:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "available_cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AvailableCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private blockReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "block_reason"
    .end annotation
.end field

.field private changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_codeword"
    .end annotation
.end field

.field private changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_mobile_phone"
    .end annotation
.end field

.field private changeShortCode:Lru/rocketbank/core/model/ChangeShortCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "change_short_code"
    .end annotation
.end field

.field private contactsHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contacts_hash"
    .end annotation
.end field

.field private cover:Lru/rocketbank/core/model/CoverModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field private ctc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctc"
    .end annotation
.end field

.field private deposits:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deposits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/DepositModel;",
            ">;"
        }
    .end annotation
.end field

.field private driverLicence:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "driver_licence"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private foreignJointAccounts:[Lru/rocketbank/core/model/JointAccount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "foreign_joint_accounts"
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/UserModel$Info;",
            ">;"
        }
    .end annotation
.end field

.field private inn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inn"
    .end annotation
.end field

.field private invitationRevenue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invitation_revenue"
    .end annotation
.end field

.field private invites:Lru/rocketbank/core/model/InvitesModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invites"
    .end annotation
.end field

.field private isCanOpenDeposit:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_open_deposit"
    .end annotation
.end field

.field private isDepositWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deposit_works"
    .end annotation
.end field

.field private issues:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "issues"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/IssueModel;",
            ">;"
        }
    .end annotation
.end field

.field private jointAccounts:[Lru/rocketbank/core/model/JointAccount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "joint_accounts"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private linkedCards:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private loginToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_token"
    .end annotation
.end field

.field private migration:Lru/rocketbank/core/model/migration/Migration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tochka_joining"
    .end annotation
.end field

.field private migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tochka_joining_urls"
    .end annotation
.end field

.field private miles:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miles"
    .end annotation
.end field

.field private mkbWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mkb_works"
    .end annotation
.end field

.field private onetwotripUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onetwotrip_uid"
    .end annotation
.end field

.field private operationsPerPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operations_per_page"
    .end annotation
.end field

.field private penaltyTaxNotifications:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "penalty_tax_notifications"
    .end annotation
.end field

.field private phone:Lru/rocketbank/core/model/PhoneModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone"
    .end annotation
.end field

.field private providersHash:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "providers_hash"
    .end annotation
.end field

.field private pusherToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pusher_token"
    .end annotation
.end field

.field private rates:Lru/rocketbank/core/model/UserModel$Rates;

.field private safe_accounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/SafeAccount;",
            ">;"
        }
    .end annotation
.end field

.field private secondName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "second_name"
    .end annotation
.end field

.field private selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

.field private shopWorks:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shop_works"
    .end annotation
.end field

.field private shortTermLogin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_term_login"
    .end annotation
.end field

.field private sound:Ljava/lang/String;

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private transferLinkedCards:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer_linked_cards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation
.end field

.field private transfers:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/TransferModel;",
            ">;"
        }
    .end annotation
.end field

.field private unreadMessages:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unread_messages"
    .end annotation
.end field

.field private username:Lru/rocketbank/core/model/UsernameModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field private userpicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field

.field public widgetToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widget_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 762
    new-instance v0, Lru/rocketbank/core/model/UserModel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/UserModel$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/UserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    .line 1151
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I

    move-result v0

    .line 167
    iput v0, p0, Lru/rocketbank/core/model/UserModel;->operationsPerPage:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Lru/rocketbank/core/manager/FeedManager;->Companion:Lru/rocketbank/core/manager/FeedManager$Companion;

    .line 2151
    invoke-static {}, Lru/rocketbank/core/manager/FeedManager;->access$getDEFAULT_PAGE_LOAD_LIMIT$cp()I

    move-result v0

    .line 167
    iput v0, p0, Lru/rocketbank/core/model/UserModel;->operationsPerPage:I

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->shortTermLogin:Z

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->miles:F

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lru/rocketbank/core/model/UserModel;->id:J

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->atmsHash:I

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->providersHash:I

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->invitationRevenue:I

    .line 716
    const-class v0, Lru/rocketbank/core/model/CoverModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/CoverModel;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->cover:Lru/rocketbank/core/model/CoverModel;

    .line 717
    const-class v0, Lru/rocketbank/core/model/InvitesModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/InvitesModel;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->invites:Lru/rocketbank/core/model/InvitesModel;

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->gender:Ljava/lang/String;

    .line 719
    sget-object v0, Lru/rocketbank/core/model/AccountModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    .line 720
    sget-object v0, Lru/rocketbank/core/model/AvailableCardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableCards:Ljava/util/ArrayList;

    .line 721
    sget-object v0, Lru/rocketbank/core/model/DepositModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->deposits:Ljava/util/ArrayList;

    .line 722
    sget-object v0, Lru/rocketbank/core/model/IssueModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->issues:Ljava/util/ArrayList;

    .line 723
    sget-object v0, Lru/rocketbank/core/model/CardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->linkedCards:Ljava/util/ArrayList;

    .line 724
    sget-object v0, Lru/rocketbank/core/model/CardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->transferLinkedCards:Ljava/util/ArrayList;

    .line 725
    sget-object v0, Lru/rocketbank/core/model/TransferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->transfers:Ljava/util/ArrayList;

    .line 726
    const-class v0, Lru/rocketbank/core/model/PhoneModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/PhoneModel;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->phone:Lru/rocketbank/core/model/PhoneModel;

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->contactsHash:Ljava/lang/String;

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->email:Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->firstName:Ljava/lang/String;

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->loginToken:Ljava/lang/String;

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->lastName:Ljava/lang/String;

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->pusherToken:Ljava/lang/String;

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->secondName:Ljava/lang/String;

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->status:Ljava/lang/String;

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->userpicUrl:Ljava/lang/String;

    .line 736
    const-class v0, Lru/rocketbank/core/model/UsernameModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/UsernameModel;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->username:Lru/rocketbank/core/model/UsernameModel;

    .line 737
    const-class v0, Lru/rocketbank/core/model/ChangeMobilePhone;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/ChangeMobilePhone;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    .line 738
    const-class v0, Lru/rocketbank/core/model/ChangeCodeWord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/ChangeCodeWord;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    .line 739
    const-class v0, Lru/rocketbank/core/model/ChangeShortCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/ChangeShortCode;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeShortCode:Lru/rocketbank/core/model/ChangeShortCode;

    .line 740
    const-class v0, Lru/rocketbank/core/model/migration/Migration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/migration/Migration;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->migration:Lru/rocketbank/core/model/migration/Migration;

    .line 741
    const-class v0, Lru/rocketbank/core/model/migration/MigrationURLs;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/migration/MigrationURLs;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    .line 742
    const-class v0, Lru/rocketbank/core/model/UserModel$Rates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/UserModel$Rates;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->rates:Lru/rocketbank/core/model/UserModel$Rates;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isDepositWorks:Z

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isCanOpenDeposit:Z

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->penaltyTaxNotifications:Z

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->ctc:Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->driverLicence:Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->inn:Ljava/lang/String;

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->mkbWorks:Z

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lru/rocketbank/core/model/UserModel;->shopWorks:Z

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->onetwotripUid:Ljava/lang/String;

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->operationsPerPage:I

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/UserModel;->unreadMessages:I

    .line 754
    sget-object v0, Lru/rocketbank/core/model/UserModel$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->info:Ljava/util/ArrayList;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->atm_kinds:Ljava/util/ArrayList;

    .line 756
    sget-object v0, Lru/rocketbank/core/model/SafeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->safe_accounts:Ljava/util/ArrayList;

    .line 757
    sget-object v0, Lru/rocketbank/core/model/AvailableAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableAccounts:Ljava/util/ArrayList;

    .line 758
    const-class v0, Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/AccountModel;

    iput-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->blockReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;
    .locals 3

    .line 383
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/AccountModel;

    .line 384
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAccounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AccountModel;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getActiveAccount()Lru/rocketbank/core/model/facade/Account;
    .locals 2

    .line 350
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getCurrentAccount()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v1, Lru/rocketbank/core/model/facade/Account;

    invoke-direct {v1, v0}, Lru/rocketbank/core/model/facade/Account;-><init>(Lru/rocketbank/core/model/AccountModel;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAtmKinds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->atm_kinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAtmsHash()I
    .locals 1

    .line 292
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->atmsHash:I

    return v0
.end method

.method public final getAvailableAccounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AvailableAccount;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableAccounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAvailableCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AvailableCardModel;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getBlockReason()Lru/rocketbank/core/model/enums/BlockReason;
    .locals 1

    .line 427
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->blockReason:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/BlockReason;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/BlockReason;

    move-result-object v0

    return-object v0
.end method

.method public final getChangeCodeWord()Lru/rocketbank/core/model/ChangeCodeWord;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    return-object v0
.end method

.method public final getChangeMobilePhone()Lru/rocketbank/core/model/ChangeMobilePhone;
    .locals 1

    .line 484
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    return-object v0
.end method

.method public final getChangeShortCode()Lru/rocketbank/core/model/ChangeShortCode;
    .locals 1

    .line 480
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeShortCode:Lru/rocketbank/core/model/ChangeShortCode;

    return-object v0
.end method

.method public final getContactsHash()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->contactsHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Lru/rocketbank/core/model/CoverModel;
    .locals 1

    .line 362
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->cover:Lru/rocketbank/core/model/CoverModel;

    return-object v0
.end method

.method public final getCtc()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->ctc:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentAccount()Lru/rocketbank/core/model/AccountModel;
    .locals 5

    .line 332
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 337
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/AccountModel;

    .line 339
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v2

    .line 340
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v3

    sget-object v4, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne v3, v4, :cond_2

    sget-object v3, Lru/rocketbank/core/model/enums/Status;->ACTIVE:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/enums/Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/enums/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getMain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    iput-object v1, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentAccountOrLocked()Lru/rocketbank/core/model/AccountModel;
    .locals 5

    .line 307
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/AccountModel;

    .line 312
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getStatusValue()Lru/rocketbank/core/model/enums/Status;

    move-result-object v2

    .line 313
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v3

    sget-object v4, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne v3, v4, :cond_1

    sget-object v3, Lru/rocketbank/core/model/enums/Status;->ACTIVE:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/enums/Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lru/rocketbank/core/model/enums/Status;->NEW:Lru/rocketbank/core/model/enums/Status;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/model/enums/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    :cond_2
    iput-object v1, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    return-object v1

    .line 319
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_5

    .line 320
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/AccountModel;

    .line 321
    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v2

    sget-object v3, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lru/rocketbank/core/model/AccountModel;->getMain()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDeposits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/DepositModel;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->deposits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getDriverLicence()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->driverLicence:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;
    .locals 1

    .line 576
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->foreignJointAccounts:[Lru/rocketbank/core/model/JointAccount;

    return-object v0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel;->id:J

    return-wide v0
.end method

.method public final getInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/UserModel$Info;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->info:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvitationRevenue()I
    .locals 1

    .line 300
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->invitationRevenue:I

    return v0
.end method

.method public final getInvites()Lru/rocketbank/core/model/InvitesModel;
    .locals 1

    .line 366
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->invites:Lru/rocketbank/core/model/InvitesModel;

    return-object v0
.end method

.method public final getIssues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/IssueModel;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->issues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getJointAccount()Lru/rocketbank/core/model/JointAccount;
    .locals 6

    .line 497
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getForeignJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 498
    invoke-virtual {v4}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 499
    new-instance v0, Lru/rocketbank/core/model/JointAccount;

    invoke-direct {v0}, Lru/rocketbank/core/model/JointAccount;-><init>()V

    .line 500
    invoke-virtual {v4}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/JointAccount;->setId(Ljava/lang/Integer;)V

    .line 501
    invoke-virtual {v4}, Lru/rocketbank/core/model/JointAccount;->getUser_avatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/JointAccount;->setJoint_user_avatar(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v4}, Lru/rocketbank/core/model/JointAccount;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/JointAccount;->setJoint_user_name(Ljava/lang/String;)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/core/model/UserModel;->getJointAccounts()[Lru/rocketbank/core/model/JointAccount;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 508
    invoke-virtual {v3}, Lru/rocketbank/core/model/JointAccount;->isConfirmed()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getJointAccounts()[Lru/rocketbank/core/model/JointAccount;
    .locals 1

    .line 580
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->jointAccounts:[Lru/rocketbank/core/model/JointAccount;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkedCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->linkedCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLoginToken()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getMigration()Lru/rocketbank/core/model/migration/Migration;
    .locals 1

    .line 588
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->migration:Lru/rocketbank/core/model/migration/Migration;

    return-object v0
.end method

.method public final getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;
    .locals 1

    .line 592
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    return-object v0
.end method

.method public final getMiles()F
    .locals 1

    .line 284
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->miles:F

    return v0
.end method

.method public final getOnetwotripUid()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->onetwotripUid:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperationsPerPage()I
    .locals 1

    .line 208
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->operationsPerPage:I

    return v0
.end method

.method public final getPhone()Lru/rocketbank/core/model/PhoneModel;
    .locals 1

    .line 419
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->phone:Lru/rocketbank/core/model/PhoneModel;

    return-object v0
.end method

.method public final getProvidersHash()I
    .locals 1

    .line 296
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->providersHash:I

    return v0
.end method

.method public final getPusherToken()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->pusherToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getRates()Lru/rocketbank/core/model/UserModel$Rates;
    .locals 1

    .line 572
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->rates:Lru/rocketbank/core/model/UserModel$Rates;

    return-object v0
.end method

.method public final getSafeAccount(Ljava/lang/String;)Lru/rocketbank/core/model/SafeAccount;
    .locals 3

    const/4 v0, 0x0

    .line 518
    :goto_0
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->safe_accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 519
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->safe_accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/SafeAccount;

    .line 520
    invoke-virtual {v1}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final getSafeAccounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/SafeAccount;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->safe_accounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSecondName()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->secondName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSound()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lru/rocketbank/core/model/enums/Status;
    .locals 1

    .line 423
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->status:Ljava/lang/String;

    invoke-static {v0}, Lru/rocketbank/core/model/enums/Status;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Status;

    move-result-object v0

    return-object v0
.end method

.method public final getTransferLinkedCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/CardModel;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->transferLinkedCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTransfers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/TransferModel;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->transfers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getUnreadMessages()I
    .locals 1

    .line 252
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->unreadMessages:I

    return v0
.end method

.method public final getUsername()Lru/rocketbank/core/model/UsernameModel;
    .locals 1

    .line 476
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->username:Lru/rocketbank/core/model/UsernameModel;

    return-object v0
.end method

.method public final getUserpicUrl()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanOpenDeposit()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isCanOpenDeposit:Z

    return v0
.end method

.method public final isDepositWorks()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isDepositWorks:Z

    return v0
.end method

.method public final isMkbWorks()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->mkbWorks:Z

    return v0
.end method

.method public final isPenaltyTaxNotifications()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->penaltyTaxNotifications:Z

    return v0
.end method

.method public final isShopWorks()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->shopWorks:Z

    return v0
.end method

.method public final isShortTermLogin()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->shortTermLogin:Z

    return v0
.end method

.method public final setAccount(Lru/rocketbank/core/model/AccountModel;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 394
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final setAccounts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/AccountModel;",
            ">;)V"
        }
    .end annotation

    .line 378
    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    return-void
.end method

.method public final setBlockReason(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->blockReason:Ljava/lang/String;

    return-void
.end method

.method public final setCanOpenDeposit(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lru/rocketbank/core/model/UserModel;->isCanOpenDeposit:Z

    return-void
.end method

.method public final setDepositWorks(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lru/rocketbank/core/model/UserModel;->isDepositWorks:Z

    return-void
.end method

.method public final setMigration(Lru/rocketbank/core/model/migration/Migration;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->migration:Lru/rocketbank/core/model/migration/Migration;

    return-void
.end method

.method public final setMkbWorks(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lru/rocketbank/core/model/UserModel;->mkbWorks:Z

    return-void
.end method

.method public final setShortTermLogin(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lru/rocketbank/core/model/UserModel;->shortTermLogin:Z

    return-void
.end method

.method public final setUnreadMessages(I)V
    .locals 0

    .line 256
    iput p1, p0, Lru/rocketbank/core/model/UserModel;->unreadMessages:I

    return-void
.end method

.method public final setUserStatus(Lru/rocketbank/core/model/enums/Status;)V
    .locals 0

    .line 431
    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Status;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->status:Ljava/lang/String;

    return-void
.end method

.method public final setUserpicUrl(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lru/rocketbank/core/model/UserModel;->userpicUrl:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 654
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->shortTermLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 655
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->miles:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 656
    iget-wide v0, p0, Lru/rocketbank/core/model/UserModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 657
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->atmsHash:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->providersHash:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->invitationRevenue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->cover:Lru/rocketbank/core/model/CoverModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 661
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->invites:Lru/rocketbank/core/model/InvitesModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 662
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->accounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 664
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableCards:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->deposits:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 666
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->issues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 667
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->linkedCards:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 668
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->transferLinkedCards:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 669
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->transfers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 670
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->phone:Lru/rocketbank/core/model/PhoneModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 671
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->contactsHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->loginToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->pusherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->secondName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->userpicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->username:Lru/rocketbank/core/model/UsernameModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 681
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeMobilePhone:Lru/rocketbank/core/model/ChangeMobilePhone;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 682
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeCodeWord:Lru/rocketbank/core/model/ChangeCodeWord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 683
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->changeShortCode:Lru/rocketbank/core/model/ChangeShortCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 684
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->migration:Lru/rocketbank/core/model/migration/Migration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 685
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 686
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->rates:Lru/rocketbank/core/model/UserModel$Rates;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 687
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isDepositWorks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 688
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->isCanOpenDeposit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 689
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->penaltyTaxNotifications:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 690
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->ctc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->driverLicence:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->inn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->mkbWorks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 694
    iget-boolean v0, p0, Lru/rocketbank/core/model/UserModel;->shopWorks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 695
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->onetwotripUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->operationsPerPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Lru/rocketbank/core/model/UserModel;->unreadMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->info:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 699
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->atm_kinds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 700
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->safe_accounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 701
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->availableAccounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 702
    iget-object v0, p0, Lru/rocketbank/core/model/UserModel;->selectedCurrentAccount:Lru/rocketbank/core/model/AccountModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 703
    iget-object p2, p0, Lru/rocketbank/core/model/UserModel;->blockReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
