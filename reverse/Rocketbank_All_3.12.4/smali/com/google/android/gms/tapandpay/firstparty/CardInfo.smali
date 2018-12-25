.class public final Lcom/google/android/gms/tapandpay/firstparty/CardInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/tapandpay/firstparty/CardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbNA:Ljava/lang/String;

.field zzbNB:Ljava/lang/String;

.field zzbNC:I

.field zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

.field zzbNE:Ljava/lang/String;

.field zzbNF:Landroid/net/Uri;

.field zzbNG:I

.field zzbNH:I

.field zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

.field zzbNJ:Ljava/lang/String;

.field zzbNK:J

.field zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

.field zzbNM:Ljava/lang/String;

.field zzbNN:[B

.field zzbNO:I

.field zzbNP:Ljava/lang/String;

.field zzbNQ:I

.field zzbNR:I

.field zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

.field zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

.field zzbNU:Ljava/lang/String;

.field zzbNy:Ljava/lang/String;

.field zzbNz:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tapandpay/firstparty/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/tapandpay/firstparty/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tapandpay/firstparty/TokenStatus;Ljava/lang/String;Landroid/net/Uri;IILcom/google/android/gms/tapandpay/firstparty/zzp;Ljava/lang/String;JLcom/google/android/gms/tapandpay/firstparty/zzz;Ljava/lang/String;[BILjava/lang/String;IILcom/google/android/gms/tapandpay/firstparty/zzn;Lcom/google/android/gms/tapandpay/firstparty/zzl;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzaiI:I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNy:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNA:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNB:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNC:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNE:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNF:Landroid/net/Uri;

    move v1, p10

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNG:I

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNH:I

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNJ:Ljava/lang/String;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNK:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNM:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNO:I

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNP:Ljava/lang/String;

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNQ:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNR:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNy:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNy:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNA:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNA:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNB:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNB:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNC:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNC:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNE:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNF:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNF:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNG:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNG:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNH:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNH:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNJ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNJ:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNK:J

    iget-wide v4, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNK:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNO:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNO:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNP:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNQ:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNQ:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNR:I

    iget v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNR:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

    iget-object v2, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNU:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNU:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNy:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNA:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNB:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNE:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNF:Landroid/net/Uri;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNJ:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNK:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNP:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNU:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "billingCardId"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "serverToken"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNz:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cardholderName"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cardNetwork"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenStatus"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbND:Lcom/google/android/gms/tapandpay/firstparty/TokenStatus;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "panLastDigits"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cardImageUrl"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNF:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cardColor"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "overlayTextColor"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "issuerInfo"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNI:Lcom/google/android/gms/tapandpay/firstparty/zzp;

    invoke-virtual {v2}, Lcom/google/android/gms/tapandpay/firstparty/zzp;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenLastDigits"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenUpgradeDeadline"

    iget-wide v4, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNK:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "transactionInfo"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNL:Lcom/google/android/gms/tapandpay/firstparty/zzz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "inAppCardToken"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNN:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cachedEligibility"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "cardTypeName"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "paymentProtocol"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenType"

    iget v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "inStoreCvmConfig"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNS:Lcom/google/android/gms/tapandpay/firstparty/zzn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "inAppCvmConfig"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNT:Lcom/google/android/gms/tapandpay/firstparty/zzl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "tokenDisplayName"

    iget-object v2, p0, Lcom/google/android/gms/tapandpay/firstparty/CardInfo;->zzbNU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/tapandpay/firstparty/zzb;->zza(Lcom/google/android/gms/tapandpay/firstparty/CardInfo;Landroid/os/Parcel;I)V

    return-void
.end method
