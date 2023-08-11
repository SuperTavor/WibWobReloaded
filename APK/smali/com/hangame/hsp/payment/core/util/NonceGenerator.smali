.class public Lcom/hangame/hsp/payment/core/util/NonceGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static sKnownNonces:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->RANDOM:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    sget-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    sget-object v2, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method

.method public static getKnownNonces()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->sKnownNonces:Ljava/util/HashSet;

    return-object v0
.end method

.method public static isNonceKnown(J)Z
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/core/util/NonceGenerator;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
