.class public final Lcom/google/android/gms/internal/zzaua$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzc"
.end annotation


# instance fields
.field private final zzagH:J

.field final synthetic zzbtv:Lcom/google/android/gms/internal/zzaua;

.field final zzbtx:Ljava/lang/String;

.field private final zzbty:Ljava/lang/String;

.field private final zzbtz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtx:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtz:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzagH:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;JLcom/google/android/gms/internal/zzaua$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaua$zzc;-><init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V

    return-void
.end method

.method private zzqk()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtz:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtx:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private zzql()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqk()V

    return-wide v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private zzqn()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zzb(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtx:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzcc(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaua$zzc;->zzk(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzk(Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqk()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtz:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zzMh()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long v6, v2, v4

    add-long v2, v0, p2

    div-long/2addr v4, v2

    mul-long/2addr v4, p2

    cmp-long p2, v6, v4

    if-gez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtz:Ljava/lang/String;

    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    invoke-interface {p3, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzqm()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzmR()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzql()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzagH:J

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-gez v4, :cond_0

    return-object v2

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzagH:J

    const/4 v5, 0x1

    shl-long/2addr v3, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqk()V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zzb(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtz:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbtv:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaua;->zzb(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaua$zzc;->zzbty:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqk()V

    if-eqz v0, :cond_3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Landroid/util/Pair;

    return-object v0
.end method
