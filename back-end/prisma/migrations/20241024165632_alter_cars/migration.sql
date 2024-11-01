/*
  Warnings:

  - You are about to drop the `Seller` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "Customer" ALTER COLUMN "street_name" DROP DEFAULT;

-- DropTable
DROP TABLE "Seller";
